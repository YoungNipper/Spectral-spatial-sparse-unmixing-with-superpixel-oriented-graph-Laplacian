# Spectral-spatial-sparse-unmixing-with-superpixel-oriented-graph-Laplacian
Authors:Zhi Li, Ruyi Feng, Lizhe Wang & Tieyong Zeng

本文章提出了超像素导向图拉普拉斯稀疏光谱-空间混合像元分解（SGLapS3U）方法，使用超像素分割算法SLIC提取图像中的均匀区域，然后应用图拉普拉斯正则化来减少相同类型混合像素的丰度差异，从而有效利用空间相关性。并引入谱-空间加权因子来增强丰度矩阵的行稀疏性，同时保持图像的连续性，避免超像素分割可能导致的不准确混合结果。

Sparse unmixing has made great progress in hyperspectral unmix-ing recently. To improve the unmixing accuracy, spatial information has been widely added to the unmixing model. However, due to the complexity of ground material mixing, the performance of the same model in diferent situations is unsatisfying. Dataset with a uniform blocky area and sharp boundaries, superpixel-based unmixing methods cluster similar pixels together and efectively exploit spatial correlation and work well, and the same to homo-geneous mixed pixels, which usually have the same endmembers and abundance usually. However, if the dataset is mixed randomly and irregularly, the above idea failed. To deal with diferent mixed situations comprehensively and efciently, a new method, named spectral-spatial-sparse unmixing with superpixel-oriented graph Laplacian (SGLapS3U), is proposed in this paper. For datasets with patched uniform distribution, the superpixel-oriented graph Laplacian can better investigate the spatial correlation of pixels within each patch. For datasets with irregular mixing situation, a spectral-spatial weighting factor is utilized to explore the spatial continuity of the images, while also guaranteeing the sparsity of the results. The experimental results on diferent datasets demonstrate the superiority of the proposed algorithm.

论文地址：https://www.tandfonline.com/doi/abs/10.1080/01431161.2023.2204198

Corresponding author: E-mail: fengry@cug.edu.cn, 0000-0002-5709-690X.

To cite this article: Zhi Li, Ruyi Feng, Lizhe Wang & Tieyong Zeng (2023) Spectral-spatial-sparse
unmixing with superpixel-oriented graph Laplacian, International Journal of Remote Sensing,
44:8, 2573-2589, DOI: 10.1080/01431161.2023.2204198

To link to this article: https://doi.org/10.1080/01431161.2023.2204198
