#��������� ������ � ��������������
anss <- readLines("https://raw.githubusercontent.com/SergeyMirvoda/da2016/master/data/earthquakes_2011.html", warn=FALSE)
#�������� ������, ������� �������� ������ � ������� ���������� ��������� � ������� grep
expstr <- "\\d{4}\\/\\d{2}\\/\\d{2} \\d{2}:\\d{2}:\\d{2}.\\d{2},\\W?\\d*.\\d{4},\\W?\\d*.\\d{4},\\d+.\\d{2},\\d+.\\d{2},\\w*,\\d+,\\d*,\\d*,\\d*.\\d{2},\\w+,\\d*"
data <- grep(expstr, anss)
#��������� ��� ��� ������ (all.equal) � �������������� ������� �������� ��� ������.
pre <- grep("PRE", anss)
all.equal(length(data), pre[2] - pre[1] - 2)
