#' Alternative Dimension Reduction Theme with Arrows
#'
#' Provides a styled theme for UMAP/PCA/t-SNE plots with arrowed axes
#' and cropped axis guides.
#'
#' @param axis A guide object for axes (default =
#'   \code{legendry::guide_axis_base(cap = I(c(-Inf, 0.2)))}).
#' @param arrow A \code{grid::arrow()} object for axis lines.
#' @return A list of ggplot2 layers that can be added to a plot.
#' @export
#'
#' @examples
#' # Minimal dimred plot with arrowed axes
#' ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
#'   geom_point() +
#'   theme_dimred2()
#'
#' # Add your own corner annotation manually if desired
#' ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
#'   geom_point() +
#'   theme_dimred2() +
#'   annotate("text",
#'     x = -Inf, y = -Inf, label = "UMAP",
#'     hjust = -0.2, vjust = -0.6
#'   )
theme_dimred2 <- function(
    axis = legendry::guide_axis_base(cap = I(c(-Inf, 0.2))),
    arrow = grid::arrow(
      type = "closed",
      angle = 25,
      length = grid::unit(0.4, "lines")
    )) {
  layers <- list(
    ggplot2::theme(
      axis.ticks = ggplot2::element_blank(),
      axis.text = ggplot2::element_blank(),
      aspect.ratio = 1,
      axis.line = ggplot2::element_line(arrow = arrow),
      axis.title = ggplot2::element_text(hjust = 0)
    ),
    ggplot2::guides(x = axis, y = axis)
  )

  layers
}
