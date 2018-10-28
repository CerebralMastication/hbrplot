


hbrplot <- function(items = LETTERS[1:15],
                    quadrants = c('one', 'two', 'three', 'four'),
                    x_labels = c(),
                    y_labels = c()) {

  x_pad <- max(45-nchar(paste(x_labels, collapse = '')), 0)
  x_text <- paste(x_labels, collapse = paste(rep(' ',x_pad), collapse=''))

  y_pad <- max(45-nchar(paste(y_labels, collapse = '')), 0)
  y_text <- paste(y_labels, collapse = paste(rep(' ',y_pad), collapse=''))


  x <- runif(length(items),-1, 1)
  y <- runif(length(items),-1, 1)
  df <- data.frame(items, x, y)

  g <- ggplot2::ggplot(data = df) +
    ggplot2::aes(x, y, label = items) +
    ggplot2::geom_point() +
    ggrepel::geom_text_repel(size = 6) +
    ggplot2::scale_y_continuous(
      breaks = c(-1.2, 0, 1.2),
      limits = c(-1.2, 1.2),
      expand = c(0, 0)
    ) +
    ggplot2::scale_x_continuous(
      breaks = c(-1.2, 0, 1.2),
      limits = c(-1.2, 1.2),
      expand = c(0, 0)
    ) +
    ggplot2::theme(
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),
      panel.background = ggplot2::element_rect(fill = '#c7bbd7', colour = '#c7bbd7'),
      panel.grid.major = ggplot2::element_line(size = 1.2),
      axis.title = ggplot2::element_text(size = 16, face = "bold")
    ) +
    ggplot2::annotate(
      "text",
      label = quadrants[1],
      x = -1.15,
      y = -1.1,
      size = 7,
      colour = "white",
      hjust = 0
    ) +
    ggplot2::annotate(
      "text",
      label = quadrants[2],
      x = -1.15,
      y = 1.1,
      size = 7,
      colour = "white",
      hjust = 0
    ) +
    ggplot2::annotate(
      "text",
      label = quadrants[3],
      x = 1.15,
      y = 1.1,
      size = 7,
      colour = "white",
      hjust = 1
    ) +
    ggplot2::annotate(
      "text",
      label = quadrants[4],
      x = 1.15,
      y = -1.1,
      size = 7,
      colour = "white",
      hjust = 1
    ) +
    ggplot2::xlab(x_text) +
    ggplot2::ylab(y_text)
  return(g)
}
