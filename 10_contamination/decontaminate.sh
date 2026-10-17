#Screened 1,038 sequences, 2,644,447,036 bp.
#1 sequence to exclude

#Exclude:
#Sequence name, length, apparent source
#unplac_scaff_74	84091	mitochondrion

seqkit grep -v -p "unplac_scaff_74" \
/mnt/beegfs/scratch/sr221061/bull/5_ncbi_sub/inputs/mSalvConf1.0_contam.fa > \
/mnt/beegfs/scratch/sr221061/bull/5_ncbi_sub/outputs/mSalvConf1.0.fa
