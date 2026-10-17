bedtools coverage \
    -a /mnt/beegfs/scratch/sr221061/bull/9_IDrisk/outputs/windows/windows_1mb.bed \
    -b /mnt/beegfs/scratch/sr221061/bull/9_IDrisk/outputs/windows/cds.bed | \
    cut -f1,2,3,7 > /mnt/beegfs/scratch/sr221061/bull/9_IDrisk/outputs/windows/cds_density_1mb.bed
