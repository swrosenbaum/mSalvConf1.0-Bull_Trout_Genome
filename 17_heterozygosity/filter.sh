bcftools view \
    -i 'QUAL >= 30 && FORMAT/DP >= 20 && FORMAT/DP <= 125 && FORMAT/GQ >= 20 && GT="het"' \
    -f PASS \
    -m2 -M2 \
    -v snps \
    --threads 8 \
    -O z \
    -o /mnt/beegfs/scratch/sr221061/bull/9_IDrisk/outputs/windows/filt-mSalvConf1.0.vcf.gz \
    /mnt/beegfs/scratch/sr221061/bull/9_IDrisk/outputs/variant/variant_analysis/pacbio/SAMN62372330/mSalvConf1.0_chr.pacbio.SAMN62372330.SRR40157007.minimap2.deepvariant.vcf.gz
