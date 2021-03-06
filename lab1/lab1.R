#' ---
#' author: "Zhenyok Nazedwox"
#' ---

# -------------------------------------------------- Task 1 --------------------------------------------------
# 1
exp.1 = rexp(n = 200)
exp.1.mean = mean(exp.1)
exp.1.sd = sd(exp.1)
# 3.i
hist(exp.1)
# 3.ii
plot(exp.1)

# 2
exp.0.1 = rexp(n = 200, rate = 0.1)
exp.0.1.mean = mean(exp.0.1)
exp.0.1.sd = sd(exp.0.1)
# 3.iii
plot(exp.1, exp.0.1)

# 2
exp.0.5 = rexp(n = 200, rate = 0.5)
exp.0.5.mean = mean(exp.0.5)
exp.0.5.sd = sd(exp.0.5)

# 2
exp.5 = rexp(n = 200, rate = 5)
exp.5.mean = mean(exp.5)
exp.5.sd = sd(exp.5)

# 2
exp.10 = rexp(n = 200, rate = 10)
exp.10.mean = mean(exp.10)
exp.10.sd = sd(exp.10)

# 4
exp.means = c(
  exp.1.mean,
  exp.0.1.mean,
  exp.0.5.mean,
  exp.5.mean,
  exp.10.mean
)
exp.sds = c(
  exp.1.sd,
  exp.0.1.sd,
  exp.0.5.sd,
  exp.5.sd,
  exp.10.sd
  )
# 4.i
plot(exp.1, rep(exp.means, times = 40))
plot(exp.0.1, rep(exp.means, times = 40))
plot(exp.0.5, rep(exp.means, times = 40))
plot(exp.5, rep(exp.means, times = 40))
plot(exp.10, rep(exp.means, times = 40))

# 4.ii
plot(exp.1, rep(exp.sds, times = 40))
plot(exp.0.1, rep(exp.sds, times = 40))
plot(exp.0.5, rep(exp.sds, times = 40))
plot(exp.5, rep(exp.sds, times = 40))
plot(exp.10, rep(exp.sds, times = 40))

# 4.iii
plot(exp.means, exp.sds)

# -------------------------------------------------- Task 2 --------------------------------------------------
huge.exp.1 = rexp(1100000)
huge.exp.1.mean = mean(huge.exp.1)
huge.exp.1.sd = sd(huge.exp.1)

# гистограмма соответсвует гистограмме функции 1-e^(-x)
# так как использовалась функция стандартного
# экспоненциального распределения (lambda = 1)
hist(huge.exp.1)

huge.exp.1.more.1 = huge.exp.1[huge.exp.1 > 1]
huge.exp.1.more.1.mean = mean(huge.exp.1.more.1)

huge.exp.1.mat = matrix(huge.exp.1, nrow = 1100, ncol = 1000)
# гистограмма выглядит так же, как и для вектора
hist(huge.exp.1.mat)

huge.exp.1.mat.col.137.mean = mean(huge.exp.1.mat[,137])

huge.exp.1.col.means = apply(huge.exp.1.mat, 2, mean)
# диаграмма отличается от экспоненциального распределения
# потому что значения из колонок не являются экспоненциальным распределением
hist(huge.exp.1.col.means)

huge.exp.1.squares = huge.exp.1 ^ 2
huge.exp.1.squares.mean = mean(huge.exp.1.squares)
huge.exp.1.squares.sd = sd(huge.exp.1.squares)
# показатели отличаются в соответствии с формулами для математического ожидания
# и стандартного отклонения экспоненциального распределения
huge.exp.1.mean
huge.exp.1.sd
huge.exp.1.squares.mean
huge.exp.1.squares.sd