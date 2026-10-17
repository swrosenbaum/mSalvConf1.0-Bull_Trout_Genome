dorado trim /mnt/beegfs/scratch/sr221061/bull/1_pre-asm/01_data/1_raw/ul/outputs/merged.ul.fastq.gz \
            --sequencing-kit SQK-LSK114 \
            --verbose \
            --threads 8 \
            --emit-fastq | gzip \
            > /mnt/beegfs/scratch/sr221061/bull/1_pre-asm/01_data/2_filtered/ul/outputs/merged.ul.filt.fastq.gz
