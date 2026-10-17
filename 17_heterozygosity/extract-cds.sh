awk 'BEGIN {OFS="\t"} !/^#/ && $3 == "CDS" {print $1, $4-1, $5}' \
    /mnt/beegfs/scratch/sr221061/bull/6_post-ncbi/06_annotation/outputs/complete.genomic.gff > \
    /mnt/beegfs/scratch/sr221061/bull/9_IDrisk/outputs/windows/cds.bed
