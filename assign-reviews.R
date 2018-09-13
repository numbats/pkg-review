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
  ~pkg,        ~repo_link,
  "naniar",    "https://github.com/njtierney/naniar",
  "stray",     "https://github.com/pridiltal/stray"   ,
  "tsibble",   "https://github.com/tidyverts/tsibble",
  "oddstream", "https://github.com/pridiltal/oddstream",
  "seer",      "https://github.com/thiyangt/seer",
  "tsfeatures","http://github.com/robjhyndman/tsfeatures",
  "plyranges", "https://github.com/sa-lee/plyranges",
  "tourr",     "https://github.com/nspyrison/tourr",
  "spinifex",  "https://github.com/nspyrison/spinifex",
  "nullabor",  "https://github.com/dicook/nullabor",
  "fable",     "https://github.com/tidyverts/fable",
  "fasster",   "https://github.com/tidyverts/fasster",
  "suggrants", "https://github.com/earowang/sugrrants"
)

library(tidyverse)
pkgs %>%
  mutate(ppl = sample(ppl_to_review, replace = FALSE))
