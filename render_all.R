rmds <- list.files("PDF", pattern = "\\.Rmd$", full.names = FALSE)

withr::with_dir("PDF", {
  for (file in rmds) {
    message("\nRendering: PDF/", file)
    rmarkdown::render(file)
  }
})

message("\nDone.")
