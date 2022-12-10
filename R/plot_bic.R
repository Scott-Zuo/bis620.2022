
#' Plot the BIC value for different number of estimators
#' @param x an object inherited from data.frame. It is
#' assumed to have its first column being the response variable along with
#' all other columns as potential estimators
#' @return a plot to visualize the optimal size of linear model based on BIC
#' @importFrom leaps regsubsets
#' @importFrom ggplot2 aes ggplot geom_point xlab ylab
#' @export
plot_bic <- function(x){
  colNum <- ncol(x)-1
  r <- regsubsets(x[,1] ~ .-1, data=x, nvmax=colNum)
  s <- summary(r)
  bic_df <- data.frame(s$bic)
  ggplot(bic_df, aes(x=1:nrow(bic_df),y=bic_df[,1])) + geom_point() +
    xlab("number of estimator") + ylab("BIC value")
}
