# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

R Markdown lab notebooks for a University of Geneva data visualisation course. Students fork this repo and complete exercises inside the `.rmd` files. There is no build system, no package, and no test suite — the primary artifact is rendered PDFs.

## Rendering notebooks

```bash
# Render a single notebook to PDF (from the repo root)
Rscript -e "rmarkdown::render('notebooks/gapminder-1.rmd')"
```

Rendered `.pdf` and `.html` files are gitignored; only source `.rmd` files are committed.

## R packages used

`tidyr`, `readr`, `dplyr`, `ggplot2`, `knitr`, `rmarkdown`, `here`

The `here` package resolves paths relative to the project root, so data is always loaded as:

```r
read_csv(here::here('data', 'some-file.csv'))
```

Do not use relative paths like `../data/` — they break when the working directory changes.

## Data

All datasets live in `data/` as CSVs sourced from [Gapminder](https://www.gapminder.org/data/). Many features come in pairs: a numeric column and a corresponding `<feature>_is_forecast` boolean column.

## Notebook structure conventions

- A `package_setup` chunk at the top loads libraries and sets global `knitr` options (echo/message/warning suppressed, figure dimensions).
- A `read_csv_locale` helper wraps `readr::read_csv` with consistent locale settings (decimal `.`, grouping `,`).
- Exercises are marked with `Goal:` comments in the Markdown prose sections.
