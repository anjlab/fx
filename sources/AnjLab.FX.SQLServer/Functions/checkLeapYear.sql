if exists (select * from sysobjects where id = object_id(N'fx.checkLeapYear') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.checkLeapYear

set quoted_identifier on
go

/*
<documentation>
<summary>
	Returns true if year of given date is leap and false in other case
</summary>

<parameters>
<param name="Date">Date to be checked</param>
</parameters>

<returns>
	true / false
</returns>

<example>
	print fx.checkLeapYear(getDate())
</example>

<author>
	Alex Zakharov
	Copyright © AnjLab 2008, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>

</documentation>
*/

create function [fx].[checkLeapYear](@Date datetime)
returns bit as
begin

  return case 
	when (year(@Date) % 4 = 0) and ((year(@Date) % 100 <> 0) or (year(@Date) % 400 = 0)) then 1 
	else 0 end

end

go

