#��������� ������ � ���������. �����: https://raw.githubusercontent.com/SergeyMirvoda/da2016/master/classwork4/gmp.dat
gmp <- read.table("gmp.dat", sep=",", header=TRUE)

estimate.scaling.exponent <- function(a, y0=6611, response=gmp$pcgmp,
                                        predictor = gmp$pop, maximum.iterations=100, deriv.step = 1/100,
                                        step.scale = 1e-12, stopping.deriv = 1/100) {
  mse <- function(a) { mean((response - y0*predictor^a)^2) }
  for (iteration in 1:maximum.iterations) {
    deriv <- (mse(a+deriv.step) - mse(a))/deriv.step
    a <- a - step.scale*deriv
    if (abs(deriv) <= stopping.deriv) { break() } # error. missing value where TRUE/FALSE needed
  }
  fit <- list(a=a,iterations=iteration,
              converged=(iteration < maximum.iterations))
  return(fit)
}
#������ ������ � ��������� ��������� a
estimate.scaling.exponent(0.15)

#� ������� ����������� ������������ ��������� ������ (������� curve) �����������

#������� ����� �� ������ �������� ������ ��������� �������, ��� ���������� �������������� ������ ������������ a?

#��������� ������ ��������� ��� � ������ ��������� �����. ��� ���������� �������� a?

