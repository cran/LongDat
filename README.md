## Introduction
LongDat R package takes longitudinal dataset as input data and analyzes if there is significant change of the features over time (proxy for treatments), while detects and controls for covariates at the same time. LongDat is able to take in several data types as input, including count, proportion, binary, ordinal and continuous data. The output table contains p values, effect sizes and covariates of each feature, making the downstream analysis easy. 


## Install
Install LongDat by typing ```install.packages("LongDat")``` in R.

## Tutorial
Tutorials for the analysis on continuous time variable (e.g. days) can be found [here](https://CRAN.R-project.org/package=LongDat/vignettes/LongDat_cont_tutorial.html). 

Tutorials for the analysis on discrete time variable (e.g. before/after treatment) can be found [here](https://CRAN.R-project.org/package=LongDat/vignettes/LongDat_disc_tutorial.html). 

Alternatively, you can type ```browseVignettes(“LongDat”)``` in R after installing LongDat to access these tutorials.

## Citation
The paper will be added here once it is published. Before that, please cite:  \
Chen et al., ( 2022 ). LongDat: an R package for confound-sensitive longitudinal analysis on multi-omics data.
