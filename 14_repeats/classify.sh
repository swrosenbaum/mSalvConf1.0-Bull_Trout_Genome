singularity exec \
  --bind /mnt/beegfs \
  /mnt/beegfs/scratch/sr221061/bull/6_post-ncbi/05_repeats/tetools.sif \
  RepeatClassifier -consensi consensi.fa
