# UniGe Data Visualisation — R Labs

Practical notebooks for the University of Geneva data visualisation course.
Labs use [Gapminder](https://www.gapminder.org/data/) data and are written in **R Markdown** (`.rmd`).

## Repository layout

```
notebooks/   R Markdown lab notebooks
data/        Gapminder CSV datasets
```

## Prerequisites

Install R (≥ 4.1) from <https://cran.r-project.org>, then install the required packages from an R console:

```r
install.packages(c("tidyr", "readr", "dplyr", "ggplot2", "knitr", "rmarkdown", "here"))
```

---

## Opening the notebooks

### RStudio (recommended for beginners)

1. Download and install [RStudio Desktop](https://posit.co/download/rstudio-desktop/).
2. Open RStudio → **File > Open Project** and select the repository root folder (or open any `.rmd` file directly via **File > Open File**).
3. Click **Knit** in the toolbar to render the notebook to PDF.

---

### Visual Studio Code

1. Install [VS Code](https://code.visualstudio.com/).
2. Install the **R** extension (`REditorSupport.r`) from the Extensions panel.
3. Install the **R Markdown** support by ensuring `rmarkdown` is installed in R (see Prerequisites).
4. Open the repository folder: **File > Open Folder**.
5. Open a `.rmd` file — a **Knit** button appears in the top toolbar (or run the command `R: Knit R Markdown Document` from the Command Palette `Cmd/Ctrl+Shift+P`).

> **Tip:** install the `languageserver` R package (`install.packages("languageserver")`) for autocompletion and diagnostics inside VS Code.

---

### IntelliJ IDEA / DataSpell

**JetBrains DataSpell** is the dedicated IDE for data science notebooks and has first-class R support.

1. Install [DataSpell](https://www.jetbrains.com/dataspell/) (or IntelliJ IDEA Ultimate with the **R Language** plugin).
2. In the **Plugins** marketplace, search for **R Language** and install it (already bundled in DataSpell).
3. Open the project: **File > Open** → select the repository root. The `.idea/` directory is already committed, so the project opens with the correct settings.
4. Set the R interpreter: **File > Settings > Languages & Frameworks > R** → point it to your local R installation.
5. Open a `.rmd` file — a **Run** / **Knit** gutter icon appears next to each chunk. Use the **R Markdown** toolbar to render the full document.

---

## Running a notebook

From any IDE, knitting `notebooks/gapminder-1.rmd` produces `notebooks/gapminder-1.pdf`.

To knit from the R console directly:

```r
rmarkdown::render("notebooks/gapminder-1.rmd")
```
