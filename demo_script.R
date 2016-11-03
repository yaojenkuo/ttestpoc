# T-Test PoC Scripts
# ------------------

# install.packages("devtools") # 先安裝 devtools 套件
library(devtools)
#setwd("~/Downloads") # 假設你將 ttestpoc 資料夾置放於 ~/Downloads 路徑
install("ttestpoc")
library(ttestpoc)
# 這個套件包含四個函數可用 ? 查詢用法
?ind_two_grp_w_factor
?ind_two_grp
?paired_t_test
?one_sample_t_test

# 我把兩個測試資料放在 google cloud，如果你有本機資料可以將第一個參數改為本機檔案路徑
ind_two_grp_w_factor("https://storage.googleapis.com/ttestpoc/ttest.csv", y = "numeric", x = "factor")
ind_two_grp("https://storage.googleapis.com/ttestpoc/cars.csv", y1 = "speed", y2 = "dist")
paired_t_test("https://storage.googleapis.com/ttestpoc/cars.csv", y1 = "speed", y2 = "dist")
one_sample_t_test("https://storage.googleapis.com/ttestpoc/cars.csv", y = "speed", mu = 10)