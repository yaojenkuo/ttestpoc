#' Paired T-Test
#' 
#' This function allows you to apply paired t-test on y1 and y2 where y1 and y2 are both numeric
#' @param path The absolute path of file
#' @param y1 One of the numeric variable names
#' @param y2 The other numeric variable name
#' @keywords t.test
#' @export
#' @examples paired_t_test(df, "numeric_col_1", "numeric_col_2")
#' paired_t_test()

paired_t_test <- function(path, y1, y2) {
  df <- read.csv(file = path, header = TRUE, sep = ",")
  result <- t.test(df[, y1], df[, y2], paired = TRUE)
  print(result)
}