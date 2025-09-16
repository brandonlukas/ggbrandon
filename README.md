# ggbrandon

📊 Custom ggplot2 themes for publication-quality and dimension reduction plots  
**Author:** Brandon Lukas  
**License:** MIT

---

## Overview

**ggbrandon** provides clean, consistent `ggplot2` themes designed for:

- Publication-ready plots inspired by the Nature Portfolio aesthetic
- Compact, minimal dimension reduction plots (e.g., UMAP, PCA, t-SNE)
- Alternative dimred styling with axis arrows and optional labels

These themes help streamline figure creation for genomics, single-cell, and other high-dimensional data workflows.

## Installation

```r
# Install from GitHub
# install.packages("remotes")
remotes::install_github("brandonlukas/ggbrandon")
```

## Functions

✨ `theme_brandon()`

A modern publication-style theme with consistent sizing and transparent backgrounds.
Ideal for figures destined for journals, posters, or slides.

Example:

```{r}
library(ggplot2)
library(ggbrandon)

ggplot(mtcars, aes(mpg, hp)) +
  geom_point() +
  theme_brandon()
```


🔬 `theme_dimred()`

A minimal theme for dimension reduction plots where axes are unimportant or distracting.
Removes axis ticks and text, enforces a square aspect ratio.

Example:

```{r}
ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point() +
  theme_dimred()
```


➡️ `theme_dimred2()`

An alternative dimension reduction theme with arrowed axes, cropped axis guides,
and an optional corner annotation label.

Examples:

```{r}
# With default axis labels
ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point() +
  theme_dimred2()

# With custom corner label
ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point() +
  theme_dimred2(label = "UMAP")
```


## License

MIT © Brandon Lukas
See LICENSE for details.