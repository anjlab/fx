if exists(
	select * 
	from sys.objects o
	inner join sys.schemas s on s.schema_id = o.schema_id
	where o.name = 'getTableAsString' and s.name = 'fx' and o.type = 'FN')
drop function [fx].[getTableAsString]

set quoted_identifier on
go

/*
<documentation>
<summary>
	Returns set of column values as string with delimiters
</summary>

<remarks>
	The function uses custom data type SimpleTable
</remarks>

<parameters>
<param name="Date">Date to be checked</param>
</parameters>

<returns>
	true / false
</returns>

<example>
	declare @Table fx.simpletable
	
	insert into @Table 
	select RecordID from fx.getEmptyTable(5) order by RecordID
	
	print fx.getTableAsString(@Table, N'')
	-- = 1, 2, 3, 4, 5
</example>

<author>
	Alex Zakharov
	Copyright © AnjLab 2010, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
	
	This code is based on code by loki1984 published on site sql.ru
	http://www.sql.ru/faq/faq_topic.aspx?fid=130
</author>

</documentation>
*/

create function [fx].[getTableAsString](@Table fx.SimpleTable readonly, @Delimeter nchar(1)) 
returns nvarchar(max) as
begin
	
	declare @Result nvarchar(max)

	set @Result = (
		select ltrim(rtrim([Value])) + @Delimeter as 'data()' 
		from @Table as A
		for xml path(''))
		
	return substring(@Result, 1, len(@Result) - 1)

end

go

