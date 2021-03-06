if exists (select * from sysobjects where id = object_id(N'fx.div') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.div

set quoted_identifier on
go


/*
<documentation>

<summary>
	Divides one number by another
</summary>

<remarks>
	Comparing with standard dividing (/) this function has two features:
	- replaces zero divisor with null to avoid divide by zero error
	- converts dividend and divisor to float to get float result
</remarks>

<parameters>
<param name="Divident">Divident</param>
<param name="Divisor">Divisor</param>
</parameters>

<returns>
	float or null if divisor is zero
</returns>

<example>
	-- Example 1. Divide integer by integer
		print fx.div(5, 2)
	-- 	= 2.5 Compare with print 5/2 that returns 2
	
	-- Example 2. Divide by zero
		print fx.div(1, 0)
	-- 	returns nothing
</example>

<author>
	Alex Zakharov
	Copyright (c) AnjLab 2010, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>

</documentation>
*/

create function [fx].[div](@Dividend float, @Divisor float) 
returns float as 
begin
	return @Dividend / case @Divisor when 0 then null else @Divisor end
end

go


