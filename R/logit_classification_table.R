#' Logit Classification Table
#'
#' Logit Classification Table. p_cutoff may be specified by user. If p_cutoff is unspecified, the p_cutoff is set equal to the mean of the predicted probabilities.
#'
#' @param mylogit Logit regression.
#' @param myvar name of the dependent variable. Use quotes.
#' @param data data.
#' @param p_cutoff predicted probabilities greater than the p_cutoff are classified as 1, and 0 otherwise.
#'
#' @section Details:
#' The following table displays the results from the command from an example. The default p_cutoff is the mean of the predicted values. The tabulation of results is interpreted as follows: 83 values of myvar were correctly predicted to be 0, 401 values were correctly predicted to be 1, 81 values were incorrectly predicted to be 0, and 43 values were incorrectly predicted to be 1.
#'
#' p_cutoff is 0.53266667
#'
#' \tabular{lccc}{
#' Summary   \tab Actual \tab Predicted \tab Freq \cr
#' Correct   \tab 0      \tab 0         \tab 83   \cr
#' Incorrect \tab 1      \tab 0         \tab 81   \cr
#' Incorrect \tab 0      \tab 1         \tab 43   \cr
#' Correct   \tab 1      \tab 1         \tab 401
#' }
#' @export

logitClassificationTable <- function(mylogit, myvar, data, p_cutoff = NULL) {
    mypred <- stats::predict(mylogit, newdata = data, type = "response")
    if (is.null(p_cutoff)) {
        p_cutoff <- mean(mypred)
    }
    Actual <- data[[myvar]]
    Predicted <- as.numeric(mypred > p_cutoff)
    Summary <- c("Correct", "Incorrect", "Incorrect", "Correct")
    cat("p_cutoff is ", p_cutoff, "\n")
    data.frame(Summary, table(Actual, Predicted))

}
