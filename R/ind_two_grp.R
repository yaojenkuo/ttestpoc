#' Independent Two Group T-Test
#' 
#' This function allows you to apply independent two-group t-test on y1 and y2 where y1 and y2 are both numeric
#' @param path The absolute path of file
#' @param y1 One of the numeric variable names
#' @param y2 The other numeric variable name
#' @keywords t.test
#' @export
#' @examples ind_two_grp(df, "numeric_col_1", "numeric_col_2")
#' ind_two_grp()

ind_two_grp <- function(path, y1, y2) {
  df <- read.csv(file = path, header = TRUE, sep = ",")
  result <- t.test(df[, y1], df[, y2])
  print(result)
}