singularity exec \
  --bind /mnt/beegfs \
  --home "$LOCAL_SCRATCH" \
  /mnt/beegfs/scratch/sr221061/bull/6_post-ncbi/05_repeats/tetools.sif \
  RepeatMasker -pa 16 \
               -gff \
               -dir . \
               -lib families.fa \
               mSalvConf1.0.fa
