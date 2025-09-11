#' Brandon-style ggplot2 theme
#'
#' A clean, publication-style theme inspired by Nature Portfolio figure aesthetics.
#'
#' @param base_size Base font size
#' @param base_family Font family
#' @param base_line_size Line thickness (typically base_size / 22)
#' @param color Color for all lines and text
#'
#' @return A ggplot2 theme object
#' @export
#'
#' @examples
#' ggplot(mtcars, aes(mpg, hp)) +
#'   geom_point() +
#'   theme_brandon()
theme_brandon <- function(
    base_size = 11,
    base_family = "",
    base_line_size = base_size / 22,
    color = "black") {
  ggplot2::theme_classic(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      panel.background = ggplot2::element_rect(fill = "transparent", color = NA),
      plot.background = ggplot2::element_rect(fill = "transparent", color = NA),
      legend.background = ggplot2::element_rect(fill = "transparent", color = NA),
      legend.box.background = ggplot2::element_rect(fill = "transparent", color = NA),
      strip.background = ggplot2::element_rect(fill = "transparent", color = NA),
      axis.line = ggplot2::element_line(size = base_line_size, color = color),
      axis.ticks = ggplot2::element_line(size = base_line_size, color = color),
      axis.title = ggplot2::element_text(size = base_size, family = base_family, color = color),
      axis.text = ggplot2::element_text(size = base_size, family = base_family, color = color),
      plot.title = ggplot2::element_text(size = base_size, family = base_family, color = color),
      plot.subtitle = ggplot2::element_text(size = base_size, family = base_family, color = color),
      plot.caption = ggplot2::element_text(size = base_size, family = base_family, color = color),
      legend.title = ggplot2::element_text(size = base_size, family = base_family, color = color),
      legend.text = ggplot2::element_text(size = base_size, family = base_family, color = color),
      strip.text = ggplot2::element_text(size = base_size, family = base_family, color = color),
      strip.clip = "off",
      plot.title.position = "plot",
      plot.caption.position = "plot"
    )
}
