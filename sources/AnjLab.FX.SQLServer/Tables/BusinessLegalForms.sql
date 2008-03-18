/*
Russian Classification of Organizational and Legal Forms according to OKOPF
Author: Alex Zakharov
Date: 2/10/2008
*/

if not exists (select * from sysobjects where id = object_id(N'fx.BusinessLegalForms') and xtype ='U')
begin

CREATE TABLE fx.BusinessLegalForms (
	Code smallint not null,
	ParentCode smallint not null,
	Name nvarchar(512) not null,
	CONSTRAINT PK_BusinessLegalForms PRIMARY KEY CLUSTERED (Code ASC)
)		

EXEC sys.sp_addextendedproperty @name=N'MS_Description', 
	@value=N'Russian Classification of Organizational and Legal Forms according to OKOPF', 
	@level0type=N'SCHEMA', @level0name=N'fx', @level1type=N'TABLE',  @level1name=N'BusinessLegalForms'


INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	39, 0,  N'����������� ����, ���������� ������������� �������������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	48, 39, N'������������� ������������ � ��������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	51, 39, N'������ ������������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	64, 39, N'������������ �� ����')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	65, 39, N'�������� � ������������ ����������������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	66, 39, N'�������� � �������������� ����������������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	60, 39, N'����������� ��������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	47, 39, N'�������� ����������� ��������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	67, 39, N'�������� ����������� ��������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	52, 39, N'���������������� �����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	53, 39, N'������������ (����������) ���������^���������: ��������� ������ ������������ ���� �� ������ �� 1 ������ 2010 �.')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	40, 39, N'��������� �����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	42, 39, N'��������� �����������, ���������� �� ����� �������������� �������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	41, 39, N'��������� �����������, ���������� �� ����� ������������ ����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	70, 0,  N'����������� ����, ���������� ��������������� �������������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	85, 70, N'��������������� �����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	83, 70, N'������������ � ����������� ����������� (�����������)')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	84, 70, N'������������ ��������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	88, 70, N'�����')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	81, 70, N'����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	71, 70, N'������� ����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	72, 70, N'��������� ����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	73, 70, N'���������� ����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	78, 70, N'������ ������������ ����������������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	96, 70, N'�������������� �����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	97, 70, N'���������� �������������� �����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	93, 70, N'����������� ����������� ��� (���������� � �����)')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	77, 70, N'����������� ������������ (����������) ��������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	80, 70, N'��������������� ������������ ��������������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	94, 70, N'������������ ������������� �����')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	76, 70, N'�������������, �������������� ��� ������ �������������� ������������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	82, 70, N'��������������� ����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	89, 70, N'������ �������������� �����������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	99, 0,  N'����������� ��� ���� ������������ ����')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	92, 99, N'������ �������������� �����')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	87, 99, N'������� ������������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	90, 99, N'����������������� � �������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	95, 99, N'������������ (����������) ���������')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	98, 99, N'���� ������������� ����')
INSERT INTO fx.BusinessLegalForms(Code, ParentCode, Name) VALUES(	91, 0,  N'�������������� ���������������')

end
go