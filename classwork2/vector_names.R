# ���� (�������� �����)
ural_home <- c(2, 0, 1, 0)

# ��������
ural_away <- c(0, 0, 1, 1)
#����������� �� ������� ��� �������
print(ural_home)
ural_away
# �������� ����� �������� ������� (������� �����)
names(ural_home) <- c("Ufa", "CSKA", "Arsenal", "Anzhi")

#���������� �� �� ����� ��� ������� ural_away �������� ����� ������ ������ (away_names)
away_names <- c("Rostov", "Amkar", "Rubin", "Orenburg")
names(ural_away) <- away_names
#����������� �� ������� ��� �������, �������� �������
ural_away
away_names
#���������� ����������� �������� � �������� ������ (����� ���-�� �����, ������� ���������� �����)
mean  (ural_home)
sum (ural_home)
mean  (ural_away)
sum (ural_away)
#�������� ������� ural_home � ural_away � �������� �����
ural_home==ural_away
