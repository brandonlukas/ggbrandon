#' Minimal Theme for Dimension Reduction Plots
#'
#' A simple helper theme for dimension reduction (e.g., UMAP, PCA, t-SNE) plots.
#' It removes axis ticks and text and enforces a square aspect ratio.
#'
#' @return A [ggplot2::theme()] object.
#' @export
#'
#' @examples
#' ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
#'   geom_point() +
#'   theme_dimred()
theme_dimred <- function() {
  theme_args <- list(
    axis.ticks = ggplot2::element_blank(),
    axis.text = ggplot2::element_blank(),
    aspect.ratio = 1
  )

  do.call(ggplot2::theme, theme_args)
}
