hifiasm -o 2.6-mSalvConf1.0 \
        -t 79 \
        --primary \
        --h1 /mnt/beegfs/scratch/sr221061/bull/1_pre-asm/01_data/1_raw/hic/outputs/merged/hic_R1.fq.gz \
        --h2 /mnt/beegfs/scratch/sr221061/bull/1_pre-asm/01_data/1_raw/hic/outputs/merged/hic_R2.fq.gz \
        --ul /mnt/beegfs/scratch/sr221061/bull/1_pre-asm/01_data/2_filtered/ul/outputs/50kb.merged.ul.filt.fastq.gz \
        --ul-rate 0.1 \
        --ul-cut 49999 \
        -l 3 \
        --hom-cov 86 \
        --telo-m CCCTAA \
        --hg-size 2.6g \
        /mnt/beegfs/scratch/sr221061/bull/1_pre-asm/01_data/2_filtered/hifi/outputs/merged.hifi.filt.fastq.gz
