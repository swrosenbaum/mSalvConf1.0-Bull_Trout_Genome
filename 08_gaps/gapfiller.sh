quartet GapFiller \
        -d /mnt/beegfs/scratch/sr221061/bull/4_post-curation/01_agp/outputs/mSalvConf1.0_curated.1.primary.curated.fa \
        -g /mnt/beegfs/scratch/sr221061/bull/2_asm/01_contig/outputs/tuned/hifiasm/2.6-mSalvConf1.0.hic.p_ctg.fa \
           /mnt/beegfs/scratch/sr221061/bull/2_asm/01_contig/outputs/tuned/hifiasm/2.6-mSalvConf1.0.hic.a_ctg.fa \
           /mnt/beegfs/scratch/sr221061/bull/2_asm/01_contig/outputs/tuned/hifiasm/2.6-mSalvConf1.0.hic.hap1.p_ctg.fa \
           /mnt/beegfs/scratch/sr221061/bull/2_asm/01_contig/outputs/tuned/hifiasm/2.6-mSalvConf1.0.hic.hap2.p_ctg.fa \
        -f 15000 \
        -l 5000 \
        -i 98 \
        -m 100000 \
        -a minimap2 \
        --minimapoption "-x asm5" \
        -p quarTeT \
        -t 40
