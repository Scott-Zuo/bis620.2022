test_that(
  "The plot_cp returns a ggplot object.",
  {
    b <- read.csv("http://www.stat.yale.edu/~jtc5/312_612/data/bodyfat.csv")
    p <- plot_cp(b)
    expect_true(inherits(p, "gg"))
  }
)

test_that(
  "The plot_bic() returns a ggplot object.",
  {
    b <- read.csv("http://www.stat.yale.edu/~jtc5/312_612/data/bodyfat.csv")
    p <- plot_bic(b)
    expect_true(inherits(p, "gg"))
  }
)

test_that(
  "The bestmodel_cp returns a character object.",
  {
    b <- read.csv("http://www.stat.yale.edu/~jtc5/312_612/data/bodyfat.csv")
    temp <- bestmodel_cp(b)
    expect_type(temp, "character")
  }
)

test_that(
  "The bestmodel_bic returns a character object.",
  {
    b <- read.csv("http://www.stat.yale.edu/~jtc5/312_612/data/bodyfat.csv")
    temp <- bestmodel_bic(b)
    expect_type(temp, "character")
  }
)
