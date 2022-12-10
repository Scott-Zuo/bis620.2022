
#' Obtain the names of the significant estimators based on CP criterion
#' @param x an object inherited from data.frame. It is
#' assumed to have its first column being the response variable along with
#' all other columns as potential estimators
#' @return a character value with names of significant estimators
#' @importFrom leaps regsubsets
#' @export
bestmodel_cp <- function(x) {
  colnum <- ncol(x) - 1
  r <- regsubsets(x[, 1] ~ . - 1, data = x, nvmax = colnum)
  s <- summary(r)
  bestcp <- s$which[which.min(s$cp), ]
  names(bestcp[bestcp == TRUE])[-1]
}
