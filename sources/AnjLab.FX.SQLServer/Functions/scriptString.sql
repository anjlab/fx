if exists (select * from sysobjects where id = object_id(N'fx.scriptString') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.scriptString

set quoted_identifier on
go

/*
<documentation>
<summary>
	Returns script to assign long string variable
</summary>

<remarks>
	Returned string is enclosed in quotation marks, long string is splitted to several strings
	(length of each substring is limited by @Chunk value) combined with + symbol
</remarks>

<parameters>
<param name="String">Original string</param>
<param name="Chunk">Number of symbols per row</param>
</parameters>

<returns>
	Scripted string
</returns>

<example>
	print fx.ScriptString(replicate('A', 1000), 100)
</example>

<author>
	Alex Zakharov
	Copyright (c) AnjLab 2011, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>
</documentation>
*/


create function fx.scriptString(@String nvarchar(max), @Chunk int)
returns nvarchar(max) as
begin

	declare @Result nvarchar(max)
	set @Result = space(0)
	
	if len(@String) <= @Chunk
		return N'''' + @String + N''''
	
	while len(@String) > @Chunk
	begin
		set @Result = @Result + replicate(nchar(9), 1) + '''' + substring(@String, 1, @Chunk) + ''' + ' + nchar(13)
		set @String = substring(@String, @Chunk + 1, len(@String) - @Chunk)
	end
	
	set @Result = @Result + replicate(nchar(9), 1) + '''' + @String + ''''
	
	return @Result
	
end

go

