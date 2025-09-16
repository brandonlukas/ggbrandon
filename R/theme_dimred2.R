#' Alternative Dimension Reduction Theme with Arrows and Label
#'
#' Provides a styled theme for UMAP/PCA/t-SNE plots with arrowed axes,
#' cropped axis guides, and an optional corner annotation.
#'
#' @param label Optional corner label text. If NULL, axis labels are not removed.
#' @param hjust Horizontal justification for the corner label (default = -0.2).
#'   Negative values push the label further left of the axis corner,
#'   positive values push it right.
#' @param vjust Vertical justification for the corner label (default = -0.6).
#'   Negative values push the label further below the axis corner,
#'   positive values push it upward.
#' @param axis A guide object for axes (default =
#'   \code{legendry::guide_axis_base(cap = I(c(-Inf, 0.2)))}).
#' @param arrow A \code{grid::arrow()} object for axis lines.
#' @return A list of ggplot2 layers that can be added to a plot.
#' @export
#'
#' @examples
#' # With default axis labels
#' ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
#'   geom_point() +
#'   theme_dimred2()
#'
#' # With custom corner label
#' ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
#'   geom_point() +
#'   theme_dimred2(label = "UMAP")
theme_dimred2 <- function(
    label = NULL,
    hjust = -0.2,
    vjust = -0.6,
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

  if (!is.null(label)) {
    layers <- c(
      layers,
      list(
        ggplot2::annotate(
          "text",
          x = -Inf, y = -Inf,
          label = label,
          hjust = hjust, vjust = vjust
        ),
        ggplot2::labs(x = NULL, y = NULL)
      )
    )
  }

  layers
}
