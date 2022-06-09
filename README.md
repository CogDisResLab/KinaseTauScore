
<!-- README.md is generated from README.Rmd. Please edit that file -->

# KinaseTauScore

<!-- badges: start -->

[![GitHub
issues](https://img.shields.io/github/issues/CogDisResLab/KinaseTauScore)](https://github.com/CogDisResLab/KinaseTauScore/issues)
[![GitHub
pulls](https://img.shields.io/github/issues-pr/CogDisResLab/KinaseTauScore)](https://github.com/CogDisResLab/KinaseTauScore/pulls)
[![R-CMD-check](https://github.com/CogDisResLab/KinaseTauScore/workflows/R-CMD-check/badge.svg)](https://github.com/CogDisResLab/KinaseTauScore/actions)
[![BiocCheck](https://github.com/CogDisResLab/KinaseTauScore/workflows/R-CMD-check-bioc/badge.svg)](https://github.com/CogDisResLab/KinaseTauScore/actions)

![GitHub release (latest
SemVer)](https://img.shields.io/github/v/release/CogDisResLab/KinaseTauScore)
![GitHub release (latest SemVer including
pre-releases)](https://img.shields.io/github/v/release/CogDisResLab/KinaseTauScore?include_prereleases)
![GitHub](https://img.shields.io/github/license/CogDisResLab/KinaseTauScore)

[![BioC
status](http://www.bioconductor.org/shields/build/release/bioc/KinaseTauScore.svg)](https://bioconductor.org/checkResults/release/bioc-LATEST/KinaseTauScore)
[![Codecov test
coverage](https://codecov.io/gh/CogDisResLab/KinaseTauScore/branch/main/graph/badge.svg)](https://app.codecov.io/gh/CogDisResLab/KinaseTauScore?branch=main)

<!-- badges: end -->

`KinaseTauScore` is a data package that allows access to a curated
dataset of phsophorylation profiles of human kinases on the 𝛕-protein in
an Alzhemier Disease context. The data is derived from the paper
`High-content siRNA screening of the kinome identifies kinases involved in Alzheimer's disease-related tau hyperphosphorylation`
by Azorsa et al[^1].

## Installation instructions

Get the latest stable `R` release from
[CRAN](http://cran.r-project.org/). Then install `KinaseTauScore` from
[Bioconductor](http://bioconductor.org/) using the following code:

``` r
if (!requireNamespace("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
}

BiocManager::install("KinaseTauScore")
```

And the development version from
[GitHub](https://github.com/CogDisResLab/KinaseTauScore) with:

``` r
BiocManager::install("CogDisResLab/KinaseTauScore")
```

## Citation

Below is the citation output from using `citation('KinaseTauScore')` in
R. Please run this yourself to check for any updates on how to cite
**KinaseTauScore**.

``` r
print(citation('KinaseTauScore'), bibtex = TRUE)
```

Please note that the `KinaseTauScore` was only made possible thanks to
many other R and bioinformatics software authors, which are cited either
in the vignettes and/or the paper(s) describing this package.

## Code of Conduct

Please note that the `KinaseTauScore` project is released with a
[Contributor Code of
Conduct](https://bioconductor.github.io/bioc_coc_multilingual/). By
contributing to this project, you agree to abide by its terms.

## Development tools

-   Continuous code testing is possible thanks to [GitHub
    actions](https://www.tidyverse.org/blog/2020/04/usethis-1-6-0/)
    through *[usethis](https://CRAN.R-project.org/package=usethis)*,
    *[remotes](https://CRAN.R-project.org/package=remotes)*, and
    *[rcmdcheck](https://CRAN.R-project.org/package=rcmdcheck)*
    customized to use [Bioconductor’s docker
    containers](https://www.bioconductor.org/help/docker/) and
    *[BiocCheck](https://bioconductor.org/packages/3.15/BiocCheck)*.
-   Code coverage assessment is possible thanks to
    [codecov](https://codecov.io/gh) and
    *[covr](https://CRAN.R-project.org/package=covr)*.
-   The [documentation
    website](http://CogDisResLab.github.io/KinaseTauScore) is
    automatically updated thanks to
    *[pkgdown](https://CRAN.R-project.org/package=pkgdown)*.
-   The code is styled automatically thanks to
    *[styler](https://CRAN.R-project.org/package=styler)*.
-   The documentation is formatted thanks to
    *[devtools](https://CRAN.R-project.org/package=devtools)* and
    *[roxygen2](https://CRAN.R-project.org/package=roxygen2)*.

For more details, check the `dev` directory.

This package was developed using
*[biocthis](https://bioconductor.org/packages/3.15/biocthis)*.

[^1]: Azorsa DO, Robeson RH, Frost D, et al. High-content siRNA
    screening of the kinome identifies kinases involved in Alzheimer’s
    disease-related tau hyperphosphorylation. BMC Genomics.
    2010;11(1):25. <doi:10.1186/1471-2164-11-25>
