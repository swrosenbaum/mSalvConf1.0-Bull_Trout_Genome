BASE_DIR="/mnt/beegfs/scratch/sr221061/bull/6_post-ncbi/09_orthologs"
QUERY="${BASE_DIR}/inputs/candidate_genes.faa"
DB="${BASE_DIR}/outputs/prot-db/mSalvConf1.0.db"
OUTPUT="${BASE_DIR}/outputs/loci_results.tsv"

# Run blastp
blastp -query "$QUERY" \
       -db "$DB" \
       -out "$OUTPUT" \
       -outfmt "6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore" \
       -evalue 1e-20 \
       -max_target_seqs 5 \
       -num_threads 10
