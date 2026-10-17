BASE_DIR="/mnt/beegfs/scratch/sr221061/bull/6_post-ncbi/09_orthologs"
OUT_DIR="${BASE_DIR}/outputs"
GFF="/mnt/beegfs/scratch/sr221061/bull/6_post-ncbi/06_annotation/outputs/complete.genomic.gff"

RESULTS="$OUT_DIR/loci_results.tsv"
BEST="$OUT_DIR/loci_best_hit.tsv"

awk -F'\t' -v OFS='\t' '
{
    query = $1
    split($2, a, "|"); split(a[3], b, "-P"); locus = b[1]
    bit = $NF
    key = query"\t"locus
    if (!(key in bestbit) || bit > bestbit[key]) bestbit[key] = bit
}
END {
    for (k in bestbit) {
        split(k, parts, "\t"); q = parts[1]; l = parts[2]
        if (!(q in top) || bestbit[k] > top[q]) { top[q] = bestbit[k]; topLocus[q] = l }
    }
    for (q in topLocus) print q, topLocus[q], top[q]
}
' "$RESULTS" | sort > "$BEST"

echo "Best-scoring locus per query protein:"
cat "$BEST"

COORDS="$OUT_DIR/target_loci_coordinates.tsv"
PATTERN=$(awk -F'\t' '{print $2}' "$BEST" | sort -u | paste -sd '|')
awk -F'\t' '$3 == "gene"' "$GFF" \
  | grep -E "$PATTERN" \
  | awk -F'\t' -v OFS='\t' '{print $1, $4, $5, $9}' > "$COORDS"

BED_OUT="$OUT_DIR/target_loci.bed"
awk -F'\t' -v OFS='\t' -v BESTFILE="$BEST" '
BEGIN {
    query_gene["XP_020310466.1"]="Esr1"
    query_gene["XP_020343518.2"]="Esr2b"
    query_gene["XP_042164061.1"]="Greb1l"
    query_gene["XP_046220529.1"]="Lrrc9"
    query_gene["XP_045555896.1"]="Ppfia2"
    query_gene["AEI84403.1"]="SdY"
    query_gene["XP_014066206.1"]="Six6a"
    query_gene["XP_014029376.3"]="Vgll3"

    while ((getline line < BESTFILE) > 0) {
        split(line, f, "\t")
        locus_gene[f[2]] = query_gene[f[1]]
    }
    close(BESTFILE)
}
{
    split($4, f, ";"); split(f[1], g, "-"); id = g[2]
    if (id in locus_gene) print $1, $2-1, $3, locus_gene[id]
}
' "$COORDS" > "$BED_OUT"

echo "Done. Final BED: $BED_OUT"
