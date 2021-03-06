if exists (select * from sysobjects where id = object_id(N'fx.printString') and xtype in (N'P'))
	drop procedure fx.printString

set quoted_identifier on
go

/*
<documentation>
<summary>
	Outputs long strings 
</summary>

<remarks>
	This procedure is analogue of print command, but capable to outputs strings longer than 8000 bytes
	(ncarchar(400)). The procedure outputs string by chunks. Each chunk is limeted by carriage return
	symbol (nchar(13)) or 4000 unicode symbols if there is no closer carriage return.
	
	Printed string size is limited by nvarchar(max) data type size (about 2Gb)
</remarks>

<example>

	-- Example 1. Printing long string. String is printed by chunks os 4000 symbols
	-- each chunk stsrts with new row
	declare @String nvarchar(max)
	set @String = space(0)
	set @String = @String + replicate(N'X', 4000)
	set @String = @String + replicate(N'Y', 4000)
	set @String = @String + replicate(N'Z', 4000)
	exec fx.printString @String
	
	-- Example 2. Printing long string returned by stored procedure
	declare @String nvarchar(max)
	exec fx.scriptData 'fx', 'Countries', @PrintResult = 0, @Result = @String output
	exec fx.printString @String

	-- Example 3. Printing multiline string
	exec fx.printString N'
		abc
		def
		gh'
	
</example>

<author>
	Alex Zakharov
	Copyright (c) AnjLab 2011, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>

</documentation>
*/

create procedure fx.printString(@String nvarchar(max)) as
begin
		declare @Chunk int
		set @Chunk = 4000
		set @String = replace(@String, nchar(10), space(0))

		while charindex(nchar(13), @String) > 0 or (charindex(nchar(13), @String) = 0 and len(@String) > @Chunk)
			if (charindex(nchar(13), @String) = 0 and len(@String) > @Chunk)
			begin
				print substring(@String, 1, @Chunk)
				set @String = substring(@String, @Chunk + 1, len(@String) - @Chunk)
			end else begin
				print substring(@String, 1, charindex(nchar(13), @String) - 1)
				set @String = substring(
					@String, 
					charindex(nchar(13), @String) + 1, 
					len(@String) - (charindex(nchar(13),@String)) )
			end

		print @String

end

go
