#' Independent Two Group T-Test With Factor
#' 
#' This function allows you to apply independent two-group t-test on y and x where y is numeric and x is a binary factor
#' @param path The absolute path of file
#' @param y The variable name of numeric value
#' @param x The variable name of binary factor value
#' @keywords t.test
#' @export
#' @examples ind_two_grp_w_factor(df, "numeric_col", "binary_factor_col")
#' ind_two_grp_w_factor()

ind_two_grp_w_factor <- function(path, y, x) {
  df <- read.csv(file = path, header = TRUE, sep = ",")
  result <- t.test(df[, y]~df[, x])
  print(result)
}