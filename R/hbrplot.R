#' Produce a glorious HBR style 2x2 plot
#'
#' @param items A vector of items you want plotted. Typically a string vector.
#' @param quadrants A vector of four quandrant names. You can give more than four, but anything after the fourth one is just ignored. Because, seriously.
#' @param x_labels A vector of length two which will be coerced into the x axis label.
#' @param y_labels A vector of length two which will be coerced into the y axis label.
#' @return A ggplot2 figure that is in the style of a 2x2 plot.
#' @examples
#' hbrplot(items=c('me','you','Dog Named Boo','truck driver'),
#'         quadrants=c('love','pet','feed','neuter'),
#'         x_labels=c('fast','slow'),
#'         y_labels=c('sadly','happily'))
hbrplot <- function(items = LETTERS[1:15],
                    quadrants = c('one', 'two', 'three', 'four'),
                    x_labels = c(''),
                    y_labels = c('')) {

  quads <- data.frame(
    x = c(-1.15, -1.15, 1.15, 1.15),
    y = c(-1.1, 1.1, 1.1, -1.1),
    hjust = c(0, 0, 1, 1),
    label = quadrants
  )

  x <- stats::runif(length(items), -1, 1)
  y <- stats::runif(length(items), -1, 1)
  df <- data.frame(items, x, y)

  ggplot2::ggplot(data = df) +
    ggplot2::aes(x, y, label = items) +
    ggplot2::geom_hline(yintercept = 0, size = 1.2, color = "white") +
    ggplot2::geom_vline(xintercept = 0, size = 1.2, color = "white") +
    ggplot2::geom_point() +
    ggrepel::geom_text_repel(size = 6) +
    ggplot2::geom_text(ggplot2::aes(x, y, label = label, hjust = hjust),
                       data = quads, color = "white", size = 7) +
    ggplot2::scale_x_continuous(labels = x_labels, breaks = c(-.5, .5),
                                limits = c(-1.2, 1.2), expand = c(0, 0)) +
    ggplot2::scale_y_continuous(labels = y_labels, breaks = c(-.5, .5),
                                limits = c(-1.2, 1.2), expand = c(0, 0)) +
    ggplot2::theme(
      axis.title = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),
      axis.text.x = ggplot2::element_text(size = 16, face = "bold", hjust = .5),
      axis.text.y = ggplot2::element_text(size = 16, face = "bold", hjust = .5, angle = 90),
      panel.background = ggplot2::element_rect(fill = '#c7bbd7', colour = '#c7bbd7'),
      panel.grid = ggplot2::element_blank()
    )
}
