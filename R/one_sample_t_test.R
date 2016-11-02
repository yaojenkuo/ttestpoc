#' One Sample T-Test
#' 
#' This function allows you to apply one sample t-test on y where y is numeric
#' @param path The absolute path of file
#' @param y The numeric variable name
#' @param mu The mean of null hypothesis
#' @keywords t.test
#' @export
#' @examples one_sample_t_test(df, "numeric_col")
#' one_sample_t_test()

one_sample_t_test <- function(path, y, mu) {
  df <- read.csv(file = path, header = TRUE, sep = ",")
  result <- t.test(df[, y], mu = mu)
  print(result)
}