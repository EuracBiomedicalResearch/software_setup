# Software setup and configuration

This repository provides scripts and documentation for an automated installation
of research software and data resources.

## Installation of R

For reproducibility and stability of the R software (and required libraries), a
[docker](https://www.docker.com/)/[singularity](https://sylabs.io/singularity/)
container is used. This enables to have parallel installation of different R
versions and related R libraries.

Suggested containers for R are the official docker container(s) from
[Bioconductor](https://bioconductor.org), the
[bioconductor_docker](https://hub.docker.com/r/bioconductor/bioconductor_docker)
images. These build on the official R/Posit containers and bundle an RStudio
server version allowing thus interactive use of R through RStudio in a web
browser. There is a docker image for each Bioconductor version (identified with
the tag *RELEASE_<version>*) ensuring thus reproducibility of analyses using a
specific version of R and Bioconductor packages.

The docker containers can be pulled and installed using e.g. `docker pull
bioconductor/bioconductor_docker:RELEASE_3_22`. Similarly, it is possible to
pull the docker image and convert to a singularity container using `singularity
pull docker://bioconductor/bioconductor_docker:RELEASE_3_22`.

The Eurac Research Institute for Biomedicine defines its own container, building
on the Bioconductor container but adding additional libraries and software
required for some data analyses performed on study data. These are defined at
the
[ifb_bioconductor_docker](https://github.com/EuracBiomedicalResearch/ifb_bioconductor_docker)
GitHub repository and can be installed with e.g.  `docker pull
jorainer/ifb_bioconductor_docker:RELEASE_3_22`.

Along with R, also R libraries need to be installed. The sets of libraries are
defined in *txt* files within the *R* sub-folder.

### Installation of R packages

The set of R packages to be installed are listed in *txt* files in the *R*
sub-folder. The names of the R libraries should be reported there, one line per
library. R libraries that are only available through GitHub can be listed using
the *organization*/*repository name* syntax (e.g. `"jorainer/atc"`) for the R
package with the ATC definition.

The packages can be installed by *sourcing* the
[R/install_packages.R](R/install_packages.R) R script (e.g. with `Rscript
install_packages.R` executed within the *R* sub-folder).
