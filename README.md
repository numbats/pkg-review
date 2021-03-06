
<!-- README.md is generated from README.Rmd. Please edit that file -->

# numbat-pkg-review

The goal of the NUMBAT package review is to provide everyone with an
opportunity to have their code reviewed, and to get experience reviewing
others code.

This project will use a reduced set of guidelines based on [rOpenSci’s
package review guide](https://github.com/ropensci/dev_guide)

# Suggested packages

The suggested packages, authors, and reviewers are listed in
[pkgs.csv]() and below:

``` r
pkgs <- readr::read_csv("pkgs.csv")
#> Parsed with column specification:
#> cols(
#>   pkg = col_character(),
#>   repo_link = col_character(),
#>   author = col_character()
#> )

ppl_to_review <-  c(
  "Cameron Roach",
  "Di Cook",
  "Dilini Talagala",
  "Earo Wang",
  "Mitchell O’Hara-Wild",
  "Nicholas Spyrison",
  "Nicholas Tierney",
  "Sayani Gupta",
  "Stuart Lee",
  "Rob Hyndman",
  "Roger Peng",
  "Ursula Laa",
  "Thiyanga Talagala"
)

library(tidyverse)

set.seed(2018-9-18-1717)
pkgs %>%
  mutate(reviewer = sample(ppl_to_review, replace = FALSE)) %>%
  knitr::kable()
```

| pkg        | repo\_link                                 | author             | reviewer             |
| :--------- | :----------------------------------------- | :----------------- | :------------------- |
| naniar     | <https://github.com/njtierney/naniar>      | Nick T             | Stuart Lee           |
| stray      | <https://github.com/pridiltal/stray>       | Dilini             | Cameron Roach        |
| tsibble    | <https://github.com/tidyverts/tsibble>     | Earo               | Mitchell O’Hara-Wild |
| oddstream  | <https://github.com/pridiltal/oddstream>   | Dilini             | Thiyanga Talagala    |
| seer       | <https://github.com/thiyangt/seer>         | Thiyanga           | Earo Wang            |
| tsfeatures | <http://github.com/robjhyndman/tsfeatures> | Rob                | Nicholas Spyrison    |
| plyranges  | <https://github.com/sa-lee/plyranges>      | Stuart             | Sayani Gupta         |
| tourr      | <https://github.com/ggobi/tourr>           | Di                 | Roger Peng           |
| spinifex   | <https://github.com/nspyrison/spinifex>    | Nick S             | Ursula Laa           |
| nullabor   | <https://github.com/dicook/nullabor>       | Di                 | Nicholas Tierney     |
| fable      | <https://github.com/tidyverts/fable>       | Rob / Mitch / Earo | Rob Hyndman          |
| fasster    | <https://github.com/tidyverts/fasster>     | Mitch              | Dilini Talagala      |
| sugrrants  | <https://github.com/earowang/sugrrants>    | Earo               | Di Cook              |

# How to start

## As an author of an R package

  - [Open an issue](https://github.com/numbats/pkg-review/issues/new) on
    the NUMBATs pkgreview repo and fill out the template

  - Myself, Rob, or Di, will assign a reviewer.

  - The reviewers will try their best to repsond within 2 weeks

  - For your info, [Here is an author response example from
    rOpenSci](https://github.com/ropensci/onboarding/issues/160#issuecomment-355043656)

## As a reviewer

You can read blog posts written by reviewers about their experiences
[via this link](https://ropensci.org/tags/reviewer/). In particular, in
[this blog post by Mara
Averick](https://ropensci.org/blog/2017/08/22/first-package-review/)
read about the “naive user” role a reviewer can take to provide useful
feedback even without being experts of the package’s topic or
implementation, by asking themselves *“What did I think this thing would
do? Does it do it? What are things that scare me off?”*. In [another
blog
post](https://ropensci.org/blog/2017/09/08/first-review-experiences/)
Verena Haunschmid explains how she alternated between using the package
and checking its code.

As both a former reviewer and package author [Adam
Sparks](https://adamhsparks.github.io/) [wrote
this](https://twitter.com/adamhsparks/status/898132036451303425)
“\[write\] a good critique of the package structure and best coding
practices. If you know how to do something better, tell me. It’s easy to
miss documentation opportunities as a developer, as a reviewer, you have
a different view. You’re a user that can give feedback. What’s not clear
in the package? How can it be made more clear? If you’re using it for
the first time, is it easy? Do you know another R package that maybe I
should be using? Or is there one I’m using that perhaps I shouldn’t be?
If you can contribute to the package, offer.”

  - Copy this [modified review
    template](https://raw.githubusercontent.com/numbats/pkg-review/master/review_template.md),
    and fill it in on the repo
  - Provide general comments on:
      - Does the code comply with general principles in the [Mozilla
        reviewing
        guide](https://mozillascience.github.io/codeReview/review.html)?
      - Does the package comply with the [rOpenSci packaging
        guide](https://ropensci.github.io/dev_guide/building.html#building)?
      - Are there improvements that could be made to the code style?
      - Is there code duplication in the package that should be reduced?
      - Are there user interface improvements that could be made?
      - Are there performance improvements that could be made?
      - Is the documentation (installation
        instructions/vignettes/examples/demos) clear and sufficient?
      - If you have your own relevant data/problem, work through it with
        the package. You may find rough edges and use-cases the author
        didn’t think about.

Please be respectful and kind to the authors in your reviews. The
rOpenSci [code of
conduct](https://ropensci.github.io/dev_guide/policies.html#code-of-conduct)
is mandatory for everyone involved in our review process.

We would like you to submit your review withing 3 weeks.

Please contact the editor directly or in the submission thread to inform
them about possible delays.

We encourage you to use automated tools to facilitate your reviewing.
These include:

  - Checking the package’s logs on its continuous integration services
    (Travis-CI, Codecov, etc.)
  - Running `devtools::check()` and `devtools::test()` on the package to
    find any errors that may be missed on the author’s system.
  - Using the **covr** package to examine the extent of test coverage.
  - Using the
    [**goodpractice**](https://github.com/MangoTheCat/goodpractice)
    package (`goodpractice::gp()`) to identify likely sources of errors
    and style issues. Most exceptions will need to be justified by the
    author in the particular context of their package.
  - Using `spelling::spell_check_package()` (and
    `spelling::spell_check_files("README.Rmd")`) to find spelling
    errors.

### Experience from past reviewers

First-time reviewers may find it helpful to read (about) some previous
reviews. In general you can find submission threads of onboarded
packages
[here](https://github.com/ropensci/onboarding/issues?q=is%3Aissue+is%3Aclosed+label%3A6%2Fapproved).
Here are a few chosen examples of reviews (note that your reviews do not
need to be as long as these examples):

  - `rtika`
    [review 1](https://github.com/ropensci/onboarding/issues/191#issuecomment-367166658)
    and
    [review 2](https://github.com/ropensci/onboarding/issues/191#issuecomment-368254623)

  - `NLMR`
    [review 1](https://github.com/ropensci/onboarding/issues/188#issuecomment-368042693)
    and
    [review 2](https://github.com/ropensci/onboarding/issues/188#issuecomment-369310831)

  - `bowerbird` [pre-review
    comment](https://github.com/ropensci/onboarding/issues/139#issuecomment-322713737),
    [review 1](https://github.com/ropensci/onboarding/issues/139#issuecomment-342380870),
    [review 2](https://github.com/ropensci/onboarding/issues/139#issuecomment-342724843).

  - `rusda`
    [review](https://github.com/ropensci/onboarding/issues/18#issuecomment-120445737)
    (from before we had a review template)

## Submitting the Review

  - When your review is complete, paste it as a comment into the package
    onboarding issue.
  - Additional comments are welcome in the same issue as a package
    onboarding request. We hope that package reviews will work as an
    ongoing conversation with the authors as opposed to a single round
    of reviews typical of academic manuscripts.
  - You may also submit issues or pull requests directly to the package
    repo if you choose, but if you do, please comment about them and
    link to them in the onboarding repo comment thread so we have a
    centralized record and text of your review.
  - Please include an estimate of how many hours you spent on your
    review afterwards.

## Review follow-up

Authors should respond within 2 weeks with their changes to the package
in response to your review. At this stage, we ask that you respond as to
whether the changes sufficiently address any issues raised in your
review. We encourage ongoing discussion between package authors and
reviewers, and you may ask editors to clarify issues in the review
thread as well.

# Possible names for the review repo:

  - potoroo
  - platypus
  - petrel
