nextflow run /mnt/beegfs/scratch/sr221061/bull/2_asm/03_hic/scripts/readmapping \
             --input /mnt/beegfs/scratch/sr221061/bull/2_asm/03_hic/scripts/samplesheet.csv \
             --fasta /mnt/beegfs/scratch/sr221061/bull/2_asm/01_contig/outputs/tuned/hifiasm/2.6-mSalvConf1.0.hic.p_ctg.fa \
             --outfmt bam \
             --outdir /mnt/beegfs/scratch/sr221061/bull/2_asm/03_hic/outputs \
             -profile singularity
