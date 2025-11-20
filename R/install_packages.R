#' @title Function to install sets of R packages
#'
#' The `install_packages()` function installs sets of R packages defined in
#' (tab separated) text files.
#'
#' @param path `character(1)` with the path to the directory containing the txt
#'     files from which package lists should be read.
#'
#' @param files optional `character` vector with the actual file names from
#'     which to read package definition.
#'
#' @export
install_packages <- function(path = ".", files = dir(path, pattern = ".txt$")) {
    if (!length(files))
        stop("No files provided or found in the specified path")
}
