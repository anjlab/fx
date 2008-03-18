/*
This table contains list of russian personal ID types (in Russian)
Author: Alex Zakharov
Date: 2/1/2008
*/

if not exists (select * from sysobjects where id = object_id(N'fx.IdentityCardTypes') and xtype = 'U' )
begin

CREATE TABLE fx.IdentityCardTypes (
	IdentityCardCode tinyint not null,
	CardName nvarchar(512) not null,
	CardNotes nvarchar(max) null,
	CONSTRAINT PK_IdentityCardTypes PRIMARY KEY CLUSTERED (IdentityCardCode ASC)
)

DELETE FROM fx.IdentityCardTypes
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	1, N'������� ���������� ����', N'������������ �� 01.01.2006 ��� ����������� ������� � ��� ��� ����������� � ������������ � �������������� ������������� ���������� ��������� �� 04.12.2003 N 731')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	3, N'������������� � ��������', N'��� ���, �� ��������� 16-������� (� 01.10.97 - 14-�������) ��������, ����������� � ������������ � ����������������� ���������� ���������')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	4, N'������������� �������� �������', N'��� �������������� (��������, �����������, ��������)')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	5, N'������� �� ������������ �� ����� ������� �������', N'��� ���, �������������� �� ���� ������� �������')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	6, N'������� �����������', N'������� ������ ����������� ���� (���������� ���������), �������� �� 1997 �.')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	7, N'������� ����� ������� (�������, ��������, ��������)', N'������� ����� ��� ������, ��������, ��������� � �������, ���������� ������� ������ �� ������� ��� ���������')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	8, N'��������� �������������, �������� ������ �������� ������', N'��������, ���������� ������� ���������� (��� ���, ������� �������� ������� ������) � �����. �� ��. 2 ����������� ����� �� 12.06.2002 N 67-��')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	9, N'��������������� ������� ���������� ���������� ���������', N'��������������� ������� ��� ������� ���������� ���������')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	10, N'����������� �������', N'����������� ������� ��� ��������� ����������� �� �������� ���������� ���, ������� �������� ��������� �� ���������� ���������� ���������')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	11, N'������������� � ������������ ����������� � ��������� �������� �� ���������� ���������� ��������� �� ��������', N'��� ���, ��������������� � ��������� �������� (�������� �� ���� ������������ �����������, �� �� ����� 3 �������), ������������� ������������� ���������� ��������� �� 28.05.1998 N 523')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	12, N'��� �� ���������� ���� ��� �����������', N'��� �� ���������� � ���������� ��������� ��� ��� ��� ����������� � ������������ �� �������� 2 � 10 ������������ ������ �� 25.07.2002 N 115-��')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	13, N'������������� ������� � ���������� ���������', N'��� ��� (�� ������� ���������� ���������), ���������� ��������� � ������������ �� ��. 1 � 7 �� �� 19.02.1993 N 4528-1')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	14, N'��������� ������������� �������� ���������� ���������� ���������', N'��������� ������������� �������� ���������� ���������� ��������� �� ����� 2�')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	15, N'���������� �� ��������� ���������� ���� ��� ����������� � ���������� ���������', N'���������� �� ��������� ���������� ���� ��� ����������� � ���������� ��������� (��� ���, �� ������� ���������, ��������������� ��������)')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	18, N'������������� � �������������� ���������� ������� �� ���������� ���������� ���������', N'��� ����������� ������� � ��� ��� �����������, ���������� ��������� ������� � ������������ �� ������� 12 ������������ ������ �� 19.02.1993 N 4528-1')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	21, N'������� ���������� ���������� ���������', N'������� ���������� ���������� ���������, ����������� �� ���������� ���������� ��������� � 1 ������� 1997 ����')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	22, N'������������� ���������� ���������� ���������', N'�������, �������������� �������� ���������� ���������� ��������� �� ��������� ���������� ���������, ������� 1997 ����')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	23, N'������������� � ��������, �������� �������������� ������� ������������ �����������', N'��� ����������� �������, �� ��������� 16-������� ��������')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	24, N'������������� �������� ��������������� ���������� ���������', N'�������� � 2004 ���� ������������� �������� ������� (����������, �������) � ������������ � �������������� ������������� ���������� ��������� �� 12.02.2003 N 91')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	26, N'������� ������', N'������� ������ (������������� �������� ����������, ����������� �� ����� ������������ �������� ��� �� ����������� �����) ������� 1997 ����	 ')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	27, N'������� ����� ������� ������', N'������� ����� ������� ������')
INSERT INTO fx.IdentityCardTypes(IdentityCardCode, CardName, CardNotes) VALUES(	91, N'���� ���������, ��������������� ����������������� ���������� ���������', N'���� ���������, ��������������� ����������������� ���������� ��������� ��� �������������� ���������� � �������� ����������, �������������� ��������')

end
go