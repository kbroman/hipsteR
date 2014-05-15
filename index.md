---
layout: page
title: hipsteR
tagline: re-educating people who learned R before it was cool
---

I was an early adopter of [R](http://www.r-project.org), having first
learned S (yay!) and then S-plus (yuck!). But at times my knowledge of
R seems stuck in 2001. I keep finding out about &ldquo;new&rdquo; R
functions (like `replicate`, which was new in _2002_).

This is a tutorial for people like me.

### Switch to knitr

If you use [Sweave](http://leisch.userweb.mwn.de/Sweave/), it's time
you switched to [knitr](http://yihui.name/knitr/). You'll find that
the transition is easy.

A number of Sweave annoyances have been eliminated, but most
importantly you can use knitr
[with R Markdown](http://kbroman.github.io/knitr_knutshell/pages/Rmarkdown.html)
or
[with AsciiDoc](http://kbroman.github.io/knitr_knutshell/pages/asciidoc.html)
for writing simple reports. The markup is much simpler than LaTeX, and
you don't have to worry about page breaks.

### Learn [Hadley Wickham](http://had.co.nz/)'s packages

Start with [dplyr](https://github.com/hadley/dplyr),
[reshape2](https://github.com/hadley/reshape), and
[ggplot2](http://ggplot2.org/).

Also [devtools](https://github.com/hadley/devtools),
[roxygen2](https://github.com/klutometis/roxygen), and
[testthat](https://github.com/hadley/testthat).

Also [lubridate](https://github.com/hadley/lubridate) and
[stringr](https://github.com/hadley/stringr).

Also, read his [Advanced R programming](http://adv-r.had.co.nz/) book.


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
[here](http://stat.ethz.ch/R-manual/R-devel/NEWS).

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




---

The source for this tutorial is
[on github](http://github.com/kbroman/hipsteR).

I would be glad for suggestions, corrections, or additions.

Also see my
[git/github guide](http://kbroman.github.io/github_tutorial),
[knitr in a knutshell tutorial](http://kbroman.github.io/knitr_knutshell),
and [minimal make tutorial](http://kbroman.github.io/minimal_make).
