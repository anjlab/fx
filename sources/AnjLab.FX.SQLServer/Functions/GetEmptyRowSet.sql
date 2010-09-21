if exists (select * from sysobjects where id = object_id(N'fx.GetEmptyRowSet') and xtype in (N'FN', N'IF', N'TF'))
drop function fx.GetEmptyRowSet
go

/*
<summary>
	Returns rowset with defined number of record
</summary>

<author>
	Alex Zakharov
	Copyright � AnjLab 2008, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
<author>

<param name="Records">Number of records to be generated</param>

<returns>Table with one column RecordID which containts number of record</returns>

<example>
	Example 1. Multiply scalar value 
		select 'Hello, World!' from fx.GetEmptyRowSet(5)
	Example 2. Get list of numbers between two values (5 and 10)
		select RecordId from fx.GetEmptyRowSet(10) where RecordID >= 5
	Example 3. Get list of missed numbers in sequence
		declare @test table (RecordID int)
		insert into @test select top 10 RecordID from fx.GetEmptyRowSet(20) order by newid()
		select f.RecordID
			from fx.GetEmptyRowSet(20) f
			left join @test t on f.RecordID = t.RecordID
			where t.RecordID is null
			order by f.RecordID desc
	Example 4. Get list of years between two dates (now and 1000 days ago)
		select RecordId from fx.GetEmptyRowSet(year(getDate())) where RecordID >= year(getDate()-1000)	
</example>
*/

create function fx.GetEmptyRowSet(@Records int) 
returns @Table table(RecordID int) as
begin

while @Records > 0 begin
	insert into @Table values(@Records)
	set @Records = @Records - 1
end

return

end

