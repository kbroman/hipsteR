---
layout: page
title: hipsteR
tagline: re-educating people who learned R before it was cool
description: brief description of newer R-related developments
---

I was an early adopter of [R](http://www.r-project.org), having first
learned S (yay!) and then S-plus (yuck!). But at times my knowledge of
R seems stuck in 2001. I keep finding out about &ldquo;new&rdquo; R
functions (like `replicate`, which was new in _2003_).

This is a tutorial for people like me, or people who were taught by people like me.

### Switch to knitr

If you use [Sweave](http://leisch.userweb.mwn.de/Sweave/), it's time
you switched to [knitr](http://yihui.name/knitr/). You'll find that
the transition is easy.

A number of Sweave annoyances have been eliminated, but most
importantly you can use knitr
[with R Markdown](http://kbroman.org/knitr_knutshell/pages/Rmarkdown.html)
or
[with AsciiDoc](http://kbroman.org/knitr_knutshell/pages/asciidoc.html)
for writing simple reports. The markup is much simpler than LaTeX, and
you don't have to worry about page breaks.

### Learn [Hadley Wickham](http://hadley.nz)'s packages

Start with [dplyr](http://dplyr.tidyverse.org/), [tidyr](http://tidyr.tidyverse.org/),
[purrr](http://purrr.tidyverse.org/), and
[ggplot2](http://ggplot2.org/).

These are the main packages for what's now called the
"[tidyverse](https://www.tidyverse.org/)", which has grown beyond
Hadley. Also check out

- [lubridate](http://lubridate.tidyverse.org/) for handing dates
- [stringr](http://stringr.tidyverse.org/) for handling strings
- [forcats](http://forcats.tidyverse.org/) for handling factors
- [readr](http://readr.tidyverse.org/) for reading csv/tsv files
- [readxl](http://readxl.tidyverse.org/) for reading Excel files
- [broom](https://github.com/tidyverse/broom) for tidying statistical
analysis objects

For R package development, check out [devtools](https://github.com/hadley/devtools),
[roxygen2](https://github.com/klutometis/roxygen),
[testthat](https://github.com/hadley/testthat),
and [assertthat](https://github.com/hadley/assertthat).

Also, read his books: [Advanced R](http://adv-r.had.co.nz/),
[R packages](http://r-pkgs.had.co.nz/),
[R for Data Science](http://r4ds.had.co.nz/),
and [ggplot2 (2nd edition)](http://ggplot2.org/book/).



### Adopt the pipe operator

When you adopt [Hadley](http://hadley.nz)'s [dplyr](https://github.com/hadley/dplyr)
and [tidyr](https://github.com/hadley/tidyr) tools, you'll want to
also adopt the pipe operator `%>%`, from
[magrittr](http://github.com/smbache/magrittr).

You're old school, so you're used to writing
[stuff like this](https://twitter.com/kwbroman/status/521127502391955456):

```r
x <- c(0.109, 0.359, 0.63, 0.996, 0.515, 0.142, 0.017, 0.829, 0.907)
round(exp(diff(log(x))), 1)
```

Seems perfectly fine, but note how it's read from the inside out. With
the pipe operator, you can do the same series of steps, written in the
order that they're actually performed.

```r
library(magrittr)
x %>% log %>%
    diff %>%
    exp %>%
    round(1)
```

The pipe operator does some magic that makes the bit on the left be
the first argument of the function call on the right.

If you need the bit on the left of the pipe to be somewhere other than
the first argument, you can use a period.  For example, here's a wacky way to
get the log (base 2) of 5.

```r
2 %>% log(5, base=.)
```

Note:
[Jenny Bryan suggests](https://twitter.com/JennyBryan/status/748290187034169344)
that we use the parentheses on the functions even when they're not
formally required, like this:

```r
library(magrittr)
x %>% log() %>%
    diff() %>%
    exp() %>%
    round(1)
```




### Consider RStudio

If you're still using the R GUI (for Windows or Mac), you should
switch to [RStudio](http://www.rstudio.com/ide/download/desktop).
Everything about it is better.

Personally, I stick with [Emacs](http://www.gnu.org/software/emacs/) +
[ESS](http://ess.r-project.org/), because I'm writing code in multiple
languages (not just R). (Another IDE option for R that many recommend:
[Eclipse](http://www.eclipse.org/eclipse/) with
[StatET](http://www.walware.de/goto/statet).)

But I use RStudio for teaching: for demonstrations, and I have the
students use it; it's the best environment for learning R.

And note that RStudio makes it easy to
[use knitr with Markdown](http://www.rstudio.com/ide/docs/authoring/using_markdown),
and to
[develop R Packages](http://www.rstudio.com/ide/docs/packages/overview).
And RStudio also has some
[nice debugging features](http://www.rstudio.com/ide/docs/debugging/overview),
like the ability to set breakpoints.

[RStudio](http://rstudio.com), the company, produces a number of other great
tools, like [shiny](http://www.rstudio.com/shiny/) and
[ggvis](https://github.com/rstudio/ggvis).

### CRAN is huge, and there's also GitHub

[CRAN](http://cran.r-project.org) has over 8000 packages, with lots of
great stuff like
[data.table](http://cran.r-project.org/web/packages/data.table),
[magrittr](http://github.com/smbache/magrittr),
[RSQLite](http://cran.r-project.org/web/packages/RSQLite),
[XML](http://cran.r-project.org/web/packages/XML),
[rCharts](http://rcharts.io/),
[animation](http://yihui.name/animation/), and
[slidify](http://slidify.org/).

And there are even more packages that live on [GitHub](http://github.com) (solely, or in
addition to CRAN), and with the `install_github()` function in the
[devtools](https://github.com/hadley/devtools) package, you can skip
CRAN and install packages straight from GitHub. devtools also has an
`install_bitbucket()` for installing from
[BitBucket](http://bitbucket.org).

I'd better mention [Bioconductor](http://bioconductor.org/); oodles of
bioinformatics/genomics-related packages live there rather than CRAN.

And while I'm talking packages, I should mention
[ROpenSci](http://ropensci.org/), an effort to create packages to
access all kinds of data repositories from R. Take a look at
[their list](http://ropensci.org/packages/).


### You _can_ put underscores in names

It used to be that `_` was a shortcut for `<-`. (That was always a bad
idea. And it led me to use dots in function names, like
[`calc.genoprob`](https://github.com/kbroman/qtl/blob/master/R/calc.genoprob.R),
which has been problematic due to the S3 class system.)

Then they started allowing `=` in place of `<-`.

And then they got rid of `_` as a shortcut for `<-`.  Good idea, and
now we can have functions named like `calc_genoprob`.

### Read about new features

Read about new features in R
[here](http://cran.r-project.org/src/base/NEWS).

Also look at
[what was new in older versions](http://cran.r-project.org/src/base/NEWS.2)
and [even older versions](http://cran.r-project.org/src/base/NEWS.1).

### New apply-type functions

You probably know about `apply`, `lapply`, `sapply`, and `tapply`. But
did you know about `vapply` and `mapply`? And how about `replicate`?

### Parallel and Rcpp

Look at the
[parallel package](http://stat.ethz.ch/R-manual/R-devel/library/parallel/doc/parallel.pdf),
and perhaps read the
[Parallel R book](http://www.amazon.com/exec/obidos/ASIN/1449309925/7210-20).

Also look at [Rcpp](http://adv-r.had.co.nz/Rcpp.html), a simpler way
to call C/C++ functions from R. Read the [Rcpp book](http://www.amazon.com/exec/obidos/ASIN/1461468671/7210-20).

### Various

I searched through the `NEWS` files (mentioned above) and
wrote down some of the functions that were new since 2002.

(Note that I have little experience with many of these, and some are
not entirely recommended. For example,
[rickyars](https://github.com/rickyars)
[noted](https://github.com/kbroman/hipsteR/issues/4) that `inner_join` and
`left_join` in [dplyr](https://github.com/hadley/dplyr) can be 10&times;
faster than `merge`. [Ben Bolker](http://en.gravatar.com/bbolker) [recommends](http://kbroman.wordpress.com/2014/05/15/hipster-re-educating-people-who-learned-r-before-it-was-cool/#comment-3518) the `plyr::r*ply` functions
over `replicate`, as you get to define the return structure.)

[`Vectorize`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/Vectorize.html)

[`which.min`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/which.min.html), [`which.max`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/which.min.html)

[`stopifnot`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/stopifnot.html)

[`strwrap`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/strwrap.html)

[`unsplit`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/split.html)

[`rowSums`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/colSums.html), [`colSums`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/colSums.html), [`rowMeans`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/colSums.html),
[`colMeans`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/colSums.html)

[`rowsum`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/rowsum.html)

[`slice.index`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/slice.index.html)

[`runmed`](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/runmed.html)

[`addmargins`](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/addmargins.html)

[`head`](https://stat.ethz.ch/R-manual/R-devel/library/utils/html/head.html),
[`tail`](https://stat.ethz.ch/R-manual/R-devel/library/utils/html/head.html)

[`arrayInd`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/which.html)

[`droplevels`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/droplevels.html)

[`saveRDS`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/readRDS.html), [`readRDS`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/readRDS.html)

[`paste0`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/paste.html)

[`anyNA`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/NA.html)

[`aggregate`](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/aggregate.html), [`by`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/by.html)

[`merge`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/merge.html)

[`with`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/with.html)

[`stack`](https://stat.ethz.ch/R-manual/R-devel/library/utils/html/stack.html), [`reshape`](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/reshape.html), [`relist`](https://stat.ethz.ch/R-manual/R-devel/library/utils/html/relist.html)


---

The source for this tutorial is
[on github](http://github.com/kbroman/hipsteR).

I would be glad for suggestions, corrections, or additions.

Also see my
[git/github guide](http://kbroman.org/github_tutorial),
[knitr in a knutshell tutorial](http://kbroman.org/knitr_knutshell),
[minimal make tutorial](http://kbroman.org/minimal_make),
[R packages](http://kbroman.org/pkg_primer),
[data organization](http://kbroman.org/dataorg),
and [initial steps towards reproducible research](http://kbroman.org/steps2rr).
