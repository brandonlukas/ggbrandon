# ggbrandon

📊 Custom ggplot2 themes for publication-quality and dimension reduction plots  
**Author:** Brandon Lukas  
**License:** MIT

---

## Overview

**ggbrandon** provides clean, consistent `ggplot2` themes designed for:

- Publication-ready plots inspired by the Nature Portfolio aesthetic
- Compact, minimal dimension reduction plots (e.g., UMAP, PCA, t-SNE)

These themes help streamline figure creation for genomics, single-cell, and other high-dimensional data workflows.

---

## Installation

```r
# Install from GitHub
# install.packages("remotes")
remotes::install_github("brandonlukas/ggbrandon")
```

---

## Functions

✨ `theme_brandon()`

A modern publication-style theme with consistent sizing and transparent backgrounds. Ideal for figures destined for journals, posters, or slides.

```r
theme_brandon(
  base_size = 11,         # Font size
  base_family = "",       # Font family (e.g., "Helvetica Neue")
  base_line_size = 0.5,   # Line thickness
  color = "black"         # Color for all lines and text
)
```

Example:
```r
library(ggplot2)
library(ggbrandon)

ggplot(mtcars, aes(mpg, hp)) +
  geom_point() +
  theme_brandon()
```

---

🔬 `theme_dimred()`

A minimal theme for dimension reduction plots where axes are unimportant or distracting.

```r
theme_dimred(
  label = TRUE,   # Show axis titles and lines?
  square = TRUE   # Enforce square aspect ratio?
)
```

Example:
```r
ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point() +
  theme_dimred(label = FALSE, square = TRUE)
```

---

## License

MIT © Brandon Lukas

See LICENSE for details.