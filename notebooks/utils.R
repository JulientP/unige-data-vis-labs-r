library(readr)
library(ggplot2)

read_csv_locale <- function(file, ...) {
  readr::read_csv(
    file = file,
    locale = readr::locale(decimal_mark = ".", grouping_mark = ","),
    show_col_types = FALSE,
    ...
  )
}

theme_minimal_dark <- function() {
  theme_minimal() +
  theme(
    plot.background    = element_rect(fill = "black", color = NA),
    panel.background   = element_rect(fill = "black", color = NA),
    panel.grid.major   = element_line(color = "grey25"),
    panel.grid.minor   = element_line(color = "grey15"),
    text               = element_text(color = "white"),
    axis.text          = element_text(color = "white"),
    axis.title         = element_text(color = "white"),
    plot.title         = element_text(color = "white"),
    plot.subtitle      = element_text(color = "grey80"),
    legend.background  = element_rect(fill = "black", color = NA),
    legend.text        = element_text(color = "white"),
    legend.title       = element_text(color = "white")
  )
}