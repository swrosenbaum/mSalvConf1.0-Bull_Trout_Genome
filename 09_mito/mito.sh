singularity exec \
  --bind /mnt/beegfs/scratch/sr221061/bull:/mnt/beegfs/scratch/sr221061/bull \
  /mnt/beegfs/scratch/sr221061/bull/4_post-curation/07_mito/scripts/mitohifi.sif \
  mitohifi.py \
  -r /mnt/beegfs/scratch/sr221061/bull/1_pre-asm/01_data/2_filtered/hifi/outputs/merged.hifi.filt.fastq.gz \
  -f /mnt/beegfs/scratch/sr221061/bull/4_post-curation/07_mito/outputs/NC_066907.1.fa \
  -g /mnt/beegfs/scratch/sr221061/bull/4_post-curation/07_mito/outputs/NC_066907.1.gb \
  -t 4 \
  -o 2 \
  -d
