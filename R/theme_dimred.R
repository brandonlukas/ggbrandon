#' Minimal Theme for Dimension Reduction Plots
#'
#' A simple helper theme for dimension reduction (e.g., UMAP, PCA, t-SNE) plots.
#' It removes axis ticks and text, and optionally hides or shows axis titles and lines.
#' It can also enforce a square aspect ratio.
#'
#' @param label Logical. Whether to show axis titles and lines. Defaults to `TRUE`.
#' @param square Logical. Whether to set a square aspect ratio. Defaults to `TRUE`.
#'
#' @return A [ggplot2::theme()] object.
#' @export
#'
#' @examples
#' ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
#'   geom_point() +
#'   theme_dimred(label = FALSE, square = TRUE)
theme_dimred <- function(label = TRUE, square = TRUE) {
  theme_args <- list(
    axis.ticks = ggplot2::element_blank(),
    axis.text = ggplot2::element_blank(),
    axis.title = if (label) {
      ggplot2::element_text()
    } else {
      ggplot2::element_blank()
    },
    axis.line = if (label) {
      ggplot2::element_line()
    } else {
      ggplot2::element_blank()
    }
  )

  if (square) {
    theme_args$aspect.ratio <- 1
  }

  do.call(ggplot2::theme, theme_args)
}