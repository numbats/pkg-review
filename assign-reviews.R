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


pkgs <- tibble::tribble(
  ~pkg,        ~repo_link,                             ~author,
  "naniar",    "https://github.com/njtierney/naniar", "Nick T",
  "stray",     "https://github.com/pridiltal/stray",  "Dilini",
  "tsibble",   "https://github.com/tidyverts/tsibble", "Earo",
  "oddstream", "https://github.com/pridiltal/oddstream", "Dilini",
  "seer",      "https://github.com/thiyangt/seer",      "Thiyanga",
  "tsfeatures","http://github.com/robjhyndman/tsfeatures", "Rob",
  "plyranges", "https://github.com/sa-lee/plyranges",      "Stuart",
  "tourr",     "https://github.com/nspyrison/tourr",       "Nick S",
  "spinifex",  "https://github.com/nspyrison/spinifex",    "Nick S",
  "nullabor",  "https://github.com/dicook/nullabor",       "Di",
  "fable",     "https://github.com/tidyverts/fable",       "Rob / Mitch",
  "fasster",   "https://github.com/tidyverts/fasster",     "Mitch",
  "suggrants", "https://github.com/earowang/sugrrants",     "Earo"
)

library(tidyverse)
pkgs %>%
  mutate(reviewer = sample(ppl_to_review, replace = FALSE))
