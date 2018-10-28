

items <- c('tom','dick', 'harry', 'less hairy','tom','dick', 'harry', 'less hairy','tom','dick', 'harry', 'less hairy')
quadrants <- c('one one one','two','three','four')
x <- runif(length(items), -1, 1)
y <- runif(length(items), -1, 1)
df <- data.frame(items, x, y)

ggplot2::ggplot(data = df) +
  ggplot2::aes(x, y, label = items) +
  ggplot2::geom_point() +
  ggrepel::geom_text_repel(size = 6) +
  ggplot2::scale_y_continuous(
    breaks = c(-1, 0, 1),
    limits = c(-1, 1),
    expand = c(0, 0)
  ) +
  ggplot2::scale_x_continuous(
    breaks = c(-1, 0, 1),
    limits = c(-1, 1),
    expand = c(0, 0)
  ) +
  ggplot2::theme(
    axis.title = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    axis.text = ggplot2::element_blank(),
    axis.ticks = ggplot2::element_blank(),
    panel.background = ggplot2::element_rect(fill = '#c7bbd7', colour = '#c7bbd7'),
    panel.grid.major = ggplot2::element_line(size = 1.2)
  ) +
  ggplot2::annotate(
    "text",
    label = quadrants[1],
    x = -.98,
    y = -.9,
    size = 7,
    colour = "white",
    hjust = 0
  ) +
  ggplot2::annotate(
    "text",
    label = quadrants[2],
    x = -.98,
    y = .9,
    size = 7,
    colour = "white",
    hjust = 0
  ) +
  ggplot2::annotate(
    "text",
    label = quadrants[3],
    x = .98,
    y = .9,
    size = 7,
    colour = "white",
    hjust = 1
  ) +
  ggplot2::annotate(
    "text",
    label = quadrants[4],
    x = .98,
    y = -.9,
    size = 7,
    colour = "white",
    hjust = 1
  )

