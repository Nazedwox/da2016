predict.plm <- function(obj, dt) {
  # ��������, ���� �� ������ ��� ���������� � �������
  stopifnot("a" %in% names(obj), "y0" %in% names(obj))
  a <- obj$a
  y0 <- obj$y0
  # �������� ������� ������
  stopifnot(is.numeric(a),length(a)==1)
  stopifnot(is.numeric(y0),length(y0)==1)
  stopifnot(is.numeric(dt))
  return(y0*dt^a) # �������� � ������
}
