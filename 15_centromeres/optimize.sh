easycen visualize \
    --results-dir /mnt/beegfs/scratch/sr221061/bull/6_post-ncbi/03_centros/outputs \
    --output-dir /mnt/beegfs/scratch/sr221061/bull/6_post-ncbi/03_centros/outputs/optimized \
    --known-centromeres /mnt/beegfs/scratch/sr221061/bull/6_post-ncbi/03_centros/outputs/baseline/analysis_centromeres.bed \
    --min-region-size 40000 \
    --dynamic-extension \
    --optimization-extension 300000 \
    --smoothing-sigma 3.0 \
    --heatmap-colormap inferno
