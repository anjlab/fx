/*
<summary>
	Russian Classification of Organizational and Legal Forms according to Russian ОКПФ standard
</summary>

<author>
	Alex Zakharov
	Copyright © AnjLab 2008, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
<author>

<date>2/10/2008</date>
*/

set nocount on	

if not exists (select * from sysobjects where id = object_id(N'fx.BusinessLegalForms') and xtype ='U')
begin

create table fx.BusinessLegalForms (
	Code smallint not null,
	ParentCode smallint not null,
	Name nvarchar(512) not null,
	IsFavorite bit not null constraint dfBusinessLegalFormsIsFavorite default 0,
	constraint pkBusinessLegalForms primary key clustered (Code asc)
)		

exec sys.sp_addextendedproperty @name=N'MS_Description', 
	@value=N'Russian Classification of Organizational and Legal Forms according to OKOPF', 
	@level0type=N'SCHEMA', @level0name=N'fx', @level1type=N'TABLE',  @level1name=N'BusinessLegalForms'

exec sys.sp_addextendedproperty @name=N'MS_Description', 
	@value=N'You can use this flag to define legal forms which are used often (for example, to truncate full list)' , 
	@level0type=N'SCHEMA', @level0name=N'fx', @level1type=N'TABLE',  @level1name=N'BusinessLegalForms', @level2type=N'COLUMN',  @level2name=N'IsFavorite'



insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	39, 0,  N'ЮРИДИЧЕСКИЕ ЛИЦА, ЯВЛЯЮЩИЕСЯ КОММЕРЧЕСКИМИ ОРГАНИЗАЦИЯМИ')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	48, 39, N'Хозяйственные товарищества и общества')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	51, 39, N'Полные товарищества')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	64, 39, N'Товарищества на вере')
insert into fx.BusinessLegalForms(Code, ParentCode, Name, IsFavorite) values(	65, 39, N'Общества с ограниченной ответственностью', 1)
insert into fx.BusinessLegalForms(Code, ParentCode, Name, IsFavorite) values(	66, 39, N'Общества с дополнительной ответственностью', 1)
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	60, 39, N'Акционерные общества')
insert into fx.BusinessLegalForms(Code, ParentCode, Name, IsFavorite) values(	47, 39, N'Открытые акционерные общества', 1)
insert into fx.BusinessLegalForms(Code, ParentCode, Name, IsFavorite) values(	67, 39, N'Закрытые акционерные общества', 1)
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	52, 39, N'Производственные кооперативы')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	53, 39, N'Крестьянские (фермерские) хозяйства')
insert into fx.BusinessLegalForms(Code, ParentCode, Name, IsFavorite) values(	40, 39, N'Унитарные предприятия', 1)
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	42, 39, N'Унитарные предприятия, основанные на праве хозяйственного ведения')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	41, 39, N'Унитарные предприятия, основанные на праве оперативного управления')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	70, 0,  N'ЮРИДИЧЕСКИЕ ЛИЦА, ЯВЛЯЮЩИЕСЯ НЕКОММЕРЧЕСКИМИ ОРГАНИЗАЦИЯМИ')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	85, 70, N'Потребительские кооперативы')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	83, 70, N'Общественные и религиозные организации (объединения)')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	84, 70, N'Общественные движения')
insert into fx.BusinessLegalForms(Code, ParentCode, Name, IsFavorite) values(	88, 70, N'Фонды', 1)
insert into fx.BusinessLegalForms(Code, ParentCode, Name, IsFavorite) values(	81, 70, N'Учреждения', 1)
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	71, 70, N'Частные учреждения')
insert into fx.BusinessLegalForms(Code, ParentCode, Name, IsFavorite) values(	72, 70, N'Бюджетные учреждения', 1)
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	73, 70, N'Автономные учреждения')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	78, 70, N'Органы общественной самодеятельности')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	96, 70, N'Некоммерческие партнерства')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	97, 70, N'Автономные некоммерческие организации')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	93, 70, N'Объединения юридических лиц (ассоциации и союзы)')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	77, 70, N'Объединения крестьянских (фермерских) хозяйств')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	80, 70, N'Территориальные общественные самоуправления')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	94, 70, N'Товарищества собственников жилья')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	76, 70, N'Садоводческие, огороднические или дачные некоммерческие товарищества')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	82, 70, N'Государственные корпорации')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	89, 70, N'Прочие некоммерческие организации')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	99, 0,  N'ОРГАНИЗАЦИИ БЕЗ ПРАВ ЮРИДИЧЕСКОГО ЛИЦА')
insert into fx.BusinessLegalForms(Code, ParentCode, Name, IsFavorite) values(	92, 99, N'Паевые инвестиционные фонды', 1)
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	87, 99, N'Простые товарищества')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	90, 99, N'Представительства и филиалы')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	95, 99, N'Крестьянские (фермерские) хозяйства')
insert into fx.BusinessLegalForms(Code, ParentCode, Name) values(	98, 99, N'Иные неюридические лица')
insert into fx.BusinessLegalForms(Code, ParentCode, Name, IsFavorite) values(	91, 0,  N'Индивидуальные предприниматели', 1)

end
go