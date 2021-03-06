set nocount on

declare @SQL nvarchar(100)

if not exists(select * from sys.schemas where name = 'fx')
begin
	set @SQL = 'create schema fx'
	exec sp_executesql @SQL
end

go
set nocount on

if not exists(
	select * from sys.types t
	inner join sys.schemas s on s.schema_id = t.schema_id
	where s.name = 'fx' and t.name = 'SimpleTable')
	
	create type fx.SimpleTable as table([Value] nvarchar(max))
	
go
set nocount on
set quoted_identifier on
 
/*
<documentation>
<summary>
	Creating diagram 'fx'
</summary>
<remarks>
	Will attempt to create [sysdiagrams] table if it doesn't already exist
</remarks>
<generated>
	2011-06-29 19:08
</generated>
</documentation>
*/
 
if not exists (select * from sys.tables where name = 'sysdiagrams')
begin
	-- creates the first time you add a diagram to a 2005/2008 database
		create table[dbo].[sysdiagrams](
			[Name] [sysName] not null,
			[principal_id] [int] not null,
			[diagram_id] [int] identity(1,1) not null,
			[version] [int] null,
			[definition] [varbinary](max) null,
			primary key clustered([diagram_id] asc)with (pad_Index  = off, ignore_dup_key = off)  ,
			constraint [UK_principal_Name] unique nonclustered ([principal_id] asc, [Name] asc)
		) 
		exec sys.sp_addextendedproperty @name=N'microsoft_database_tools_support', @value = 1 , @level0type = N'SCHEMA',@level0Name = N'dbo', @level1type = N'TABLE',@level1Name = N'sysdiagrams'
end
-- Target table will now exist, if it didn't before
set nocount on
declare @newid int
 
/*
Output the insert that _creates_ the diagram record, with a non-null [definition],
important because .WRITE *cannot* be called against a null value (in the WHILE loop)
so we insert 0x so that .WRITE has something to append to...
*/
 
begin try
insert into sysdiagrams ([Name], [principal_id], [version], [definition]) values ('fx', 1, 1, 0x)

		set @newid = scope_identity()
end try
begin catch
	print N'Error occured: '  + error_Message()
	return
end catch
begin try
	update sysdiagrams set [definition] .Write ( 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900, null, 0) where diagram_id = @newid -- Index:1
	update sysdiagrams set [definition] .Write ( 0x0600000000000000000000000100000001000000000000000010000002000000, null, 0) where diagram_id = @newid -- Index:33
	update sysdiagrams set [definition] .Write ( 0x01000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:65
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:97
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:129
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:161
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:193
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:225
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:257
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:289
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:321
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:353
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:385
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:417
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:449
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:481
	update sysdiagrams set [definition] .Write ( 0xFDFFFFFF06000000FEFFFFFF040000000500000007000000FEFFFFFF08000000, null, 0) where diagram_id = @newid -- Index:513
	update sysdiagrams set [definition] .Write ( 0x09000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:545
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:577
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:609
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:641
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:673
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:705
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:737
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:769
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:801
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:833
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:865
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:897
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:929
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:961
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:993
	update sysdiagrams set [definition] .Write ( 0x52006F006F007400200045006E00740072007900000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1025
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1057
	update sysdiagrams set [definition] .Write ( 0x16000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1089
	update sysdiagrams set [definition] .Write ( 0x00000000000000000000000070FCBE4B6B36CC0103000000800A000000000000, null, 0) where diagram_id = @newid -- Index:1121
	update sysdiagrams set [definition] .Write ( 0x6600000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1153
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1185
	update sysdiagrams set [definition] .Write ( 0x04000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1217
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000002601000000000000, null, 0) where diagram_id = @newid -- Index:1249
	update sysdiagrams set [definition] .Write ( 0x6F00000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1281
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1313
	update sysdiagrams set [definition] .Write ( 0x040002010100000004000000FFFFFFFF00000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1345
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000050000000803000000000000, null, 0) where diagram_id = @newid -- Index:1377
	update sysdiagrams set [definition] .Write ( 0x010043006F006D0070004F0062006A0000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1409
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1441
	update sysdiagrams set [definition] .Write ( 0x12000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:1473
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000120000005F00000000000000, null, 0) where diagram_id = @newid -- Index:1505
	update sysdiagrams set [definition] .Write ( 0x01000000020000000300000004000000FEFFFFFF060000000700000008000000, null, 0) where diagram_id = @newid -- Index:1537
	update sysdiagrams set [definition] .Write ( 0x090000000A0000000B0000000C0000000D0000000E0000000F00000010000000, null, 0) where diagram_id = @newid -- Index:1569
	update sysdiagrams set [definition] .Write ( 0x11000000FEFFFFFF13000000FEFFFFFF15000000160000001700000018000000, null, 0) where diagram_id = @newid -- Index:1601
	update sysdiagrams set [definition] .Write ( 0x190000001A0000001B0000001C0000001D0000001E000000FEFFFFFFFEFFFFFF, null, 0) where diagram_id = @newid -- Index:1633
	update sysdiagrams set [definition] .Write ( 0x2100000022000000230000002400000025000000260000002700000028000000, null, 0) where diagram_id = @newid -- Index:1665
	update sysdiagrams set [definition] .Write ( 0xFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:1697
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:1729
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:1761
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:1793
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:1825
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:1857
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:1889
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:1921
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:1953
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:1985
	update sysdiagrams set [definition] .Write ( 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, null, 0) where diagram_id = @newid -- Index:2017
	update sysdiagrams set [definition] .Write ( 0x000428000A0E100C05000080020000000F00FFFF02000000007D000053600000, null, 0) where diagram_id = @newid -- Index:2049
	update sysdiagrams set [definition] .Write ( 0xAA3F0000C16F00005F4F0000DE805B10F195D011B0A000AA00BDCB5C00000800, null, 0) where diagram_id = @newid -- Index:2081
	update sysdiagrams set [definition] .Write ( 0x30000000000200000200000038002B00000009000000D9E6B0E91C81D011AD51, null, 0) where diagram_id = @newid -- Index:2113
	update sysdiagrams set [definition] .Write ( 0x00A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98, null, 0) where diagram_id = @newid -- Index:2145
	update sysdiagrams set [definition] .Write ( 0x273C25A2DA2D00002C0043200000000000000000000051444DD2011FD1118E63, null, 0) where diagram_id = @newid -- Index:2177
	update sysdiagrams set [definition] .Write ( 0x006097D2DF4834C9D2777977D811907000065B840D9C02000000680000000082, null, 0) where diagram_id = @newid -- Index:2209
	update sysdiagrams set [definition] .Write ( 0x010000003800A50900000700008001000000A2020000008000000E0000805363, null, 0) where diagram_id = @newid -- Index:2241
	update sysdiagrams set [definition] .Write ( 0x68477269648958020000CA080000436F756E7472696573202866782900000000, null, 0) where diagram_id = @newid -- Index:2273
	update sysdiagrams set [definition] .Write ( 0x2400A501000007000080020000006600000001800000436F6E74726F6C894F03, null, 0) where diagram_id = @newid -- Index:2305
	update sysdiagrams set [definition] .Write ( 0x0000110200000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:2337
	update sysdiagrams set [definition] .Write ( 0x214334120800000096240000A216000078563412070000001401000043006F00, null, 0) where diagram_id = @newid -- Index:2369
	update sysdiagrams set [definition] .Write ( 0x75006E0074007200690065007300200028006600780029000000720073006900, null, 0) where diagram_id = @newid -- Index:2401
	update sysdiagrams set [definition] .Write ( 0x6F006E003D0032002E0030002E0033003500300030002E0030002C0020004300, null, 0) where diagram_id = @newid -- Index:2433
	update sysdiagrams set [definition] .Write ( 0x75006C0074007500720065003D006E00650075007400720061006C002C002000, null, 0) where diagram_id = @newid -- Index:2465
	update sysdiagrams set [definition] .Write ( 0x5000750062006C00690063004B006500790054006F006B0065006E003D006200, null, 0) where diagram_id = @newid -- Index:2497
	update sysdiagrams set [definition] .Write ( 0x3700370061003500630035003600310039003300340065003000380039000000, null, 0) where diagram_id = @newid -- Index:2529
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:2561
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:2593
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000500000054000000, null, 0) where diagram_id = @newid -- Index:2625
	update sysdiagrams set [definition] .Write ( 0x2C0000002C0000002C00000034000000000000000000000096240000A2160000, null, 0) where diagram_id = @newid -- Index:2657
	update sysdiagrams set [definition] .Write ( 0x000000002D010000080000000C000000070000001C010000BC07000054060000, null, 0) where diagram_id = @newid -- Index:2689
	update sysdiagrams set [definition] .Write ( 0xD0020000840300007602000038040000460500002A03000046050000AE060000, null, 0) where diagram_id = @newid -- Index:2721
	update sysdiagrams set [definition] .Write ( 0x9204000000000000010000001515000066120000000000000600000006000000, null, 0) where diagram_id = @newid -- Index:2753
	update sysdiagrams set [definition] .Write ( 0x02000000020000001C010000AB0900000000000001000000C7110000FF050000, null, 0) where diagram_id = @newid -- Index:2785
	update sysdiagrams set [definition] .Write ( 0x00000000010000000100000002000000020000001C010000BC07000001000000, null, 0) where diagram_id = @newid -- Index:2817
	update sysdiagrams set [definition] .Write ( 0x00000000C7110000ED0300000000000000000000000000000200000002000000, null, 0) where diagram_id = @newid -- Index:2849
	update sysdiagrams set [definition] .Write ( 0x1C010000BC0700000000000000000000072C0000DE2000000000000000000000, null, 0) where diagram_id = @newid -- Index:2881
	update sysdiagrams set [definition] .Write ( 0x0D00000004000000040000001C010000BC07000024090000A005000078563412, null, 0) where diagram_id = @newid -- Index:2913
	update sysdiagrams set [definition] .Write ( 0x040000005A00000001000000010000000B000000000000000100000002000000, null, 0) where diagram_id = @newid -- Index:2945
	update sysdiagrams set [definition] .Write ( 0x030000000400000005000000060000000700000008000000090000000A000000, null, 0) where diagram_id = @newid -- Index:2977
	update sysdiagrams set [definition] .Write ( 0x030000006600780000000A00000043006F0075006E0074007200690065007300, null, 0) where diagram_id = @newid -- Index:3009
	update sysdiagrams set [definition] .Write ( 0x00000002000030220000CA030000020064000000FFFFFF000000000000000000, null, 0) where diagram_id = @newid -- Index:3041
	update sysdiagrams set [definition] .Write ( 0x3A0001000004BC023C6702000756657264616E61190041006E006A004C006100, null, 0) where diagram_id = @newid -- Index:3073
	update sysdiagrams set [definition] .Write ( 0x62002E004600580020006500780061006D0070006C0065002000640069006100, null, 0) where diagram_id = @newid -- Index:3105
	update sysdiagrams set [definition] .Write ( 0x6700720061006D00000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3137
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3169
	update sysdiagrams set [definition] .Write ( 0x0100FEFF030A0000FFFFFFFF0000000000000000000000000000000017000000, null, 0) where diagram_id = @newid -- Index:3201
	update sysdiagrams set [definition] .Write ( 0x4D6963726F736F66742044445320466F726D20322E300010000000456D626564, null, 0) where diagram_id = @newid -- Index:3233
	update sysdiagrams set [definition] .Write ( 0x646564204F626A6563740000000000F439B27100000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3265
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3297
	update sysdiagrams set [definition] .Write ( 0x0C00000000000000000000000100260000007300630068005F006C0061006200, null, 0) where diagram_id = @newid -- Index:3329
	update sysdiagrams set [definition] .Write ( 0x65006C0073005F00760069007300690062006C0065000000010000000B00FFFF, null, 0) where diagram_id = @newid -- Index:3361
	update sysdiagrams set [definition] .Write ( 0x1E00000000000000000000000000000000000000640000000000000000000000, null, 0) where diagram_id = @newid -- Index:3393
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000010000000100000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3425
	update sysdiagrams set [definition] .Write ( 0x000000000000D002000006002800000041006300740069007600650054006100, null, 0) where diagram_id = @newid -- Index:3457
	update sysdiagrams set [definition] .Write ( 0x62006C00650056006900650077004D006F006400650000000100000008000400, null, 0) where diagram_id = @newid -- Index:3489
	update sysdiagrams set [definition] .Write ( 0x000030000000200000005400610062006C00650056006900650077004D006F00, null, 0) where diagram_id = @newid -- Index:3521
	update sysdiagrams set [definition] .Write ( 0x640065003A00300000000100000008003A00000034002C0030002C0032003800, null, 0) where diagram_id = @newid -- Index:3553
	update sysdiagrams set [definition] .Write ( 0x0300440064007300530074007200650061006D00000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3585
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3617
	update sysdiagrams set [definition] .Write ( 0x160002000300000006000000FFFFFFFF00000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3649
	update sysdiagrams set [definition] .Write ( 0x000000000000000000000000000000000000000014000000A902000000000000, null, 0) where diagram_id = @newid -- Index:3681
	update sysdiagrams set [definition] .Write ( 0x53006300680065006D0061002000550044005600200044006500660061007500, null, 0) where diagram_id = @newid -- Index:3713
	update sysdiagrams set [definition] .Write ( 0x6C00740000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3745
	update sysdiagrams set [definition] .Write ( 0x26000200FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3777
	update sysdiagrams set [definition] .Write ( 0x00000000000000000000000000000000000000001F0000001600000000000000, null, 0) where diagram_id = @newid -- Index:3809
	update sysdiagrams set [definition] .Write ( 0x440053005200450046002D0053004300480045004D0041002D0043004F004E00, null, 0) where diagram_id = @newid -- Index:3841
	update sysdiagrams set [definition] .Write ( 0x540045004E005400530000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3873
	update sysdiagrams set [definition] .Write ( 0x2C0002010500000007000000FFFFFFFF00000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:3905
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000200000003602000000000000, null, 0) where diagram_id = @newid -- Index:3937
	update sysdiagrams set [definition] .Write ( 0x53006300680065006D0061002000550044005600200044006500660061007500, null, 0) where diagram_id = @newid -- Index:3969
	update sysdiagrams set [definition] .Write ( 0x6C007400200050006F0073007400200056003600000000000000000000000000, null, 0) where diagram_id = @newid -- Index:4001
	update sysdiagrams set [definition] .Write ( 0x36000200FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:4033
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000290000001200000000000000, null, 0) where diagram_id = @newid -- Index:4065
	update sysdiagrams set [definition] .Write ( 0x34002C0030002C0031003900380030002C0031002C0031003600320030002C00, null, 0) where diagram_id = @newid -- Index:4097
	update sysdiagrams set [definition] .Write ( 0x35002C0031003000380030000000200000005400610062006C00650056006900, null, 0) where diagram_id = @newid -- Index:4129
	update sysdiagrams set [definition] .Write ( 0x650077004D006F00640065003A00310000000100000008001E00000032002C00, null, 0) where diagram_id = @newid -- Index:4161
	update sysdiagrams set [definition] .Write ( 0x30002C003200380034002C0030002C0032003400370035000000200000005400, null, 0) where diagram_id = @newid -- Index:4193
	update sysdiagrams set [definition] .Write ( 0x610062006C00650056006900650077004D006F00640065003A00320000000100, null, 0) where diagram_id = @newid -- Index:4225
	update sysdiagrams set [definition] .Write ( 0x000008001E00000032002C0030002C003200380034002C0030002C0031003900, null, 0) where diagram_id = @newid -- Index:4257
	update sysdiagrams set [definition] .Write ( 0x380030000000200000005400610062006C00650056006900650077004D006F00, null, 0) where diagram_id = @newid -- Index:4289
	update sysdiagrams set [definition] .Write ( 0x640065003A00330000000100000008001E00000032002C0030002C0032003800, null, 0) where diagram_id = @newid -- Index:4321
	update sysdiagrams set [definition] .Write ( 0x34002C0030002C0031003900380030000000200000005400610062006C006500, null, 0) where diagram_id = @newid -- Index:4353
	update sysdiagrams set [definition] .Write ( 0x56006900650077004D006F00640065003A00340000000100000008003E000000, null, 0) where diagram_id = @newid -- Index:4385
	update sysdiagrams set [definition] .Write ( 0x34002C0030002C003200380034002C0030002C0031003900380030002C003100, null, 0) where diagram_id = @newid -- Index:4417
	update sysdiagrams set [definition] .Write ( 0x32002C0032003300340030002C00310031002C00310034003400300000000200, null, 0) where diagram_id = @newid -- Index:4449
	update sysdiagrams set [definition] .Write ( 0x000002000000000000000800000001CD061510CD06150000000000000000E40F, null, 0) where diagram_id = @newid -- Index:4481
	update sysdiagrams set [definition] .Write ( 0x0000010000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:4513
	update sysdiagrams set [definition] .Write ( 0x010003000000000000000C0000000B0000004E61BC0000000000000000000000, null, 0) where diagram_id = @newid -- Index:4545
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:4577
	update sysdiagrams set [definition] .Write ( 0xDBE6B0E91C81D011AD5100A0C90F573900000200A000BD4B6B36CC0100020000, null, 0) where diagram_id = @newid -- Index:4609
	update sysdiagrams set [definition] .Write ( 0x1048450000000000000000000000000000000000620100004400610074006100, null, 0) where diagram_id = @newid -- Index:4641
	update sysdiagrams set [definition] .Write ( 0x200053006F0075007200630065003D002E003B0049006E006900740069006100, null, 0) where diagram_id = @newid -- Index:4673
	update sysdiagrams set [definition] .Write ( 0x6C00200043006100740061006C006F0067003D00660078003B00500065007200, null, 0) where diagram_id = @newid -- Index:4705
	update sysdiagrams set [definition] .Write ( 0x7300690073007400200053006500630075007200690074007900200049006E00, null, 0) where diagram_id = @newid -- Index:4737
	update sysdiagrams set [definition] .Write ( 0x66006F003D0054007200750065003B0055007300650072002000490044003D00, null, 0) where diagram_id = @newid -- Index:4769
	update sysdiagrams set [definition] .Write ( 0x730061003B004D0075006C007400690070006C00650041006300740069007600, null, 0) where diagram_id = @newid -- Index:4801
	update sysdiagrams set [definition] .Write ( 0x650052006500730075006C00740053006500740073003D00460061006C007300, null, 0) where diagram_id = @newid -- Index:4833
	update sysdiagrams set [definition] .Write ( 0x65003B005000610063006B00650074002000530069007A0065003D0034003000, null, 0) where diagram_id = @newid -- Index:4865
	update sysdiagrams set [definition] .Write ( 0x390036003B004100700070006C00690063006100740069006F006E0020004E00, null, 0) where diagram_id = @newid -- Index:4897
	update sysdiagrams set [definition] .Write ( 0x61006D0065003D0022004D006900630072006F0073006F006600740020005300, null, 0) where diagram_id = @newid -- Index:4929
	update sysdiagrams set [definition] .Write ( 0x51004C00200053006500720076006500720020004D0061006E00610067006500, null, 0) where diagram_id = @newid -- Index:4961
	update sysdiagrams set [definition] .Write ( 0x6D0065006E0074002000530074007500640069006F0022000000008005000600, null, 0) where diagram_id = @newid -- Index:4993
	update sysdiagrams set [definition] .Write ( 0x0000660078000000000224001400000043006F0075006E007400720069006500, null, 0) where diagram_id = @newid -- Index:5025
	update sysdiagrams set [definition] .Write ( 0x730000000600000066007800000001000000D68509B3BB6BF2459AB8371664F0, null, 0) where diagram_id = @newid -- Index:5057
	update sysdiagrams set [definition] .Write ( 0x327008004E0000007B00310036003300340043004400440037002D0030003800, null, 0) where diagram_id = @newid -- Index:5089
	update sysdiagrams set [definition] .Write ( 0x380038002D0034003200450033002D0039004600410032002D00420036004400, null, 0) where diagram_id = @newid -- Index:5121
	update sysdiagrams set [definition] .Write ( 0x3300320035003600330042003900310044007D00000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5153
	update sysdiagrams set [definition] .Write ( 0x010003000000000000000C0000000B0000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5185
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5217
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5249
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5281
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5313
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5345
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5377
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5409
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5441
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5473
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5505
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5537
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5569
	update sysdiagrams set [definition] .Write ( 0x0000000000000000000000000000000000000000000000000000000000000000, null, 0) where diagram_id = @newid -- Index:5601
	update sysdiagrams set [definition] .Write ( 0x62885214, null, 0) where diagram_id = @newid -- Index:5633
end try
begin catch
	-- if we got here, the [definition] updates didn't complete, so delete the diagram row
	-- (and hope it doesn't fail!)
	delete from sysdiagrams where diagram_id = @newid
	print N'Error occured: ' + Error_Message() + ' '
	return
end catch
 
go
 
 
/*
<summary>
	World countries dictionary (in Russian and English) according to ISO 3166 
	(http://www.iso.org/iso/country_codes.htm) and Russian OKSM standards
</summary>
<author>
	Alex Zakharov
	Copyright © AnjLab 2008, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
<author>
<date>2/10/2008</date>
*/

set nocount on

if not exists (select * from sysobjects where id = object_id(N'fx.Countries') and xtype ='U')
begin

create table fx.Countries (
	CountryID smallint not null identity(1,1),
	CountryCode char(3) not null,
	ShortName nvarchar(128) not null,
	FullName nvarchar(256),
	Alfa2 char(2) not null,
	Alfa3 char(3) not null
	constraint pkCountries primary key clustered (CountryID ASC)
)		

create nonclustered index ixCountriesShortName on fx.Countries(ShortName)
create nonclustered index ixCountriesFullName on fx.Countries(FullName)

exec sys.sp_addextendedproperty @name=N'MS_Description', 
	@value=N'World countries names (in Russian and English) and codes according to ISO 3166 (http://www.iso.org/iso/country_codes.htm) and Russian OKSM standards', 
	@level0type=N'SCHEMA', @level0name=N'fx', @level1type=N'TABLE',  @level1name=N'Countries'
exec sys.sp_addextendedproperty @name=N'MS_Description', 
	@value=N'Country numeric code' , 
	@level0type=N'SCHEMA', @level0name=N'fx', @level1type=N'TABLE',  @level1name=N'Countries', @level2type=N'COLUMN',  @level2name=N'CountryCode'
exec sys.sp_addextendedproperty @name=N'MS_Description', 
	@value=N'Country two-symbols code. Used for national internet domains' , 
	@level0type=N'SCHEMA', @level0name=N'fx', @level1type=N'TABLE',  @level1name=N'Countries', @level2type=N'COLUMN',  @level2name=N'Alfa2'
exec sys.sp_addextendedproperty @name=N'MS_Description', 
	@value=N'Country three-symbols code. Used for national internet domains' , 
	@level0type=N'SCHEMA', @level0name=N'fx', @level1type=N'TABLE',  @level1name=N'Countries', @level2type=N'COLUMN',  @level2name=N'Alfa3'
exec sys.sp_addextendedproperty @name=N'MS_Description', 
	@value=N'Country short name' , 
	@level0type=N'SCHEMA', @level0name=N'fx', @level1type=N'TABLE',  @level1name=N'Countries', @level2type=N'COLUMN',  @level2name=N'ShortName'
exec sys.sp_addextendedproperty @name=N'MS_Description', 
	@value=N'Country full name' , 
	@level0type=N'SCHEMA', @level0name=N'fx', @level1type=N'TABLE',  @level1name=N'Countries', @level2type=N'COLUMN',  @level2name=N'FullName'

set identity_insert [fx].[Countries] on
	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(1,'004',N'Afghanistan',N'AFGHANISTAN','AF','AFG')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(2,'008',N'Albania',N'ALBANIA','AL','ALB')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(3,'010',N'Antarctica',N'ANTARCTICA','AQ','ATA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(4,'012',N'Algeria',N'ALGERIA','DZ','DZA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(5,'016',N'American Samoa',N'AMERICAN SAMOA','AS','ASM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(6,'020',N'Andorra',N'ANDORRA','AD','AND')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(7,'024',N'Angola',N'ANGOLA','AO','AGO')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(8,'028',N'Antigua and Barbuda',N'ANTIGUA AND BARBUDA','AG','ATG')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(9,'031',N'Azerbaijan',N'AZERBAIJAN','AZ','AZE')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(10,'032',N'Argentina',N'ARGENTINA','AR','ARG')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(11,'036',N'Australia',N'AUSTRALIA','AU','AUS')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(12,'040',N'Austria',N'AUSTRIA','AT','AUT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(13,'044',N'Bahamas',N'BAHAMAS','BS','BHS')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(14,'048',N'Bahrain',N'BAHRAIN','BH','BHR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(15,'050',N'Bangladesh',N'BANGLADESH','BD','BGD')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(16,'051',N'Armenia',N'ARMENIA','AM','ARM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(17,'052',N'Barbados',N'BARBADOS','BB','BRB')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(18,'056',N'Belgium',N'BELGIUM','BE','BEL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(19,'060',N'Bermuda',N'BERMUDA','BM','BMU')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(20,'064',N'Bhutan',N'BHUTAN','BT','BTN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(21,'068',N'Bolivia',N'BOLIVIA','BO','BOL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(22,'070',N'Bosnia and Herzegovina',N'BOSNIA AND HERZEGOVINA','BA','BIH')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(23,'072',N'Botswana',N'BOTSWANA','BW','BWA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(24,'074',N'Bouvet Island',N'BOUVET ISLAND','BV','BVT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(25,'076',N'Brazil',N'BRAZIL','BR','BRA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(26,'084',N'Belize',N'BELIZE','BZ','BLZ')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(27,'086',N'British Indian Ocean Territory',N'BRITISH INDIAN OCEAN TERRITORY','IO','IOT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(28,'090',N'Solomon Islands',N'SOLOMON ISLANDS','SB','SLB')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(29,'092',N'Virgin Islands, British',N'VIRGIN ISLANDS, BRITISH','VG','VGB')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(30,'096',N'Brunei Darussalam',N'BRUNEI DARUSSALAM','BN','BRN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(31,'100',N'Bulgaria',N'BULGARIA','BG','BGR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(32,'104',N'Myanmar',N'MYANMAR','MM','MMR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(33,'108',N'Burundi',N'BURUNDI','BI','BDI')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(34,'112',N'Belarus',N'BELARUS','BY','BLR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(35,'116',N'Cambodia',N'CAMBODIA','KH','KHM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(36,'120',N'Cameroon',N'CAMEROON','CM','CMR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(37,'124',N'Canada',N'CANADA','CA','CAN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(38,'132',N'Cape Verde',N'CAPE VERDE','CV','CPV')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(39,'136',N'Cayman Islands',N'CAYMAN ISLANDS','KY','CYM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(40,'140',N'Central African Republic',N'CENTRAL AFRICAN REPUBLIC','CF','CAF')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(41,'144',N'Sri Lanka',N'SRI LANKA','LK','LKA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(42,'148',N'Chad',N'CHAD','TD','TCD')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(43,'152',N'Chile',N'CHILE','CL','CHL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(44,'156',N'China',N'CHINA','CN','CHN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(45,'158',N'Taiwan, Province of China',N'TAIWAN, PROVINCE OF CHINA','TW','TWN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(46,'162',N'Christmas Island',N'CHRISTMAS ISLAND','CX','CXR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(47,'166',N'Cocos (Keeling) Islands',N'COCOS (KEELING) ISLANDS','CC','CCK')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(48,'170',N'Colombia',N'COLOMBIA','CO','COL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(49,'174',N'Comoros',N'COMOROS','KM','COM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(50,'175',N'Mayotte',N'MAYOTTE','YT','MYT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(51,'178',N'Congo',N'CONGO','CG','COG')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(52,'180',N'Congo, the Democratic Republic of the',N'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(53,'184',N'Cook Islands',N'COOK ISLANDS','CK','COK')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(54,'188',N'Costa Rica',N'COSTA RICA','CR','CRI')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(55,'191',N'Croatia',N'CROATIA','HR','HRV')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(56,'192',N'Cuba',N'CUBA','CU','CUB')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(57,'196',N'Cyprus',N'CYPRUS','CY','CYP')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(58,'203',N'Czech Republic',N'CZECH REPUBLIC','CZ','CZE')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(59,'204',N'Benin',N'BENIN','BJ','BEN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(60,'208',N'Denmark',N'DENMARK','DK','DNK')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(61,'212',N'Dominica',N'DOMINICA','DM','DMA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(62,'214',N'Dominican Republic',N'DOMINICAN REPUBLIC','DO','DOM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(63,'218',N'Ecuador',N'ECUADOR','EC','ECU')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(64,'222',N'El Salvador',N'EL SALVADOR','SV','SLV')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(65,'226',N'Equatorial Guinea',N'EQUATORIAL GUINEA','GQ','GNQ')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(66,'231',N'Ethiopia',N'ETHIOPIA','ET','ETH')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(67,'232',N'Eritrea',N'ERITREA','ER','ERI')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(68,'233',N'Estonia',N'ESTONIA','EE','EST')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(69,'234',N'Faroe Islands',N'FAROE ISLANDS','FO','FRO')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(70,'238',N'Falkland Islands (Malvinas)',N'FALKLAND ISLANDS (MALVINAS)','FK','FLK')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(71,'239',N'South Georgia and the South Sandwich Islands',N'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','GS','SGS')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(72,'242',N'Fiji',N'FIJI','FJ','FJI')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(73,'246',N'Finland',N'FINLAND','FI','FIN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(74,'250',N'France',N'FRANCE','FR','FRA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(75,'254',N'French Guiana',N'FRENCH GUIANA','GF','GUF')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(76,'258',N'French Polynesia',N'FRENCH POLYNESIA','PF','PYF')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(77,'260',N'French Southern Territories',N'FRENCH SOUTHERN TERRITORIES','TF','ATF')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(78,'262',N'Djibouti',N'DJIBOUTI','DJ','DJI')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(79,'266',N'Gabon',N'GABON','GA','GAB')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(80,'268',N'Georgia',N'GEORGIA','GE','GEO')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(81,'270',N'Gambia',N'GAMBIA','GM','GMB')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(82,'275',N'Palestinian Territory, Occupied',N'PALESTINIAN TERRITORY, OCCUPIED','PS','PSE')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(83,'276',N'Germany',N'GERMANY','DE','DEU')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(84,'288',N'Ghana',N'GHANA','GH','GHA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(85,'292',N'Gibraltar',N'GIBRALTAR','GI','GIB')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(86,'296',N'Kiribati',N'KIRIBATI','KI','KIR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(87,'300',N'Greece',N'GREECE','GR','GRC')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(88,'304',N'Greenland',N'GREENLAND','GL','GRL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(89,'308',N'Grenada',N'GRENADA','GD','GRD')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(90,'312',N'Guadeloupe',N'GUADELOUPE','GP','GLP')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(91,'316',N'Guam',N'GUAM','GU','GUM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(92,'320',N'Guatemala',N'GUATEMALA','GT','GTM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(93,'324',N'Guinea',N'GUINEA','GN','GIN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(94,'328',N'Guyana',N'GUYANA','GY','GUY')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(95,'332',N'Haiti',N'HAITI','HT','HTI')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(96,'334',N'Heard Island and Mcdonald Islands',N'HEARD ISLAND AND MCDONALD ISLANDS','HM','HMD')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(97,'336',N'Holy See (Vatican City State)',N'HOLY SEE (VATICAN CITY STATE)','VA','VAT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(98,'340',N'Honduras',N'HONDURAS','HN','HND')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(99,'344',N'Hong Kong',N'HONG KONG','HK','HKG')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(100,'348',N'Hungary',N'HUNGARY','HU','HUN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(101,'352',N'Iceland',N'ICELAND','IS','ISL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(102,'356',N'India',N'INDIA','IN','IND')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(103,'360',N'Indonesia',N'INDONESIA','ID','IDN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(104,'364',N'Iran, Islamic Republic of',N'IRAN, ISLAMIC REPUBLIC OF','IR','IRN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(105,'368',N'Iraq',N'IRAQ','IQ','IRQ')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(106,'372',N'Ireland',N'IRELAND','IE','IRL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(107,'376',N'Israel',N'ISRAEL','IL','ISR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(108,'380',N'Italy',N'ITALY','IT','ITA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(109,'384',N'Cote D''Ivoire',N'COTE D''IVOIRE','CI','CIV')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(110,'388',N'Jamaica',N'JAMAICA','JM','JAM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(111,'392',N'Japan',N'JAPAN','JP','JPN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(112,'398',N'Kazakhstan',N'KAZAKHSTAN','KZ','KAZ')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(113,'400',N'Jordan',N'JORDAN','JO','JOR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(114,'404',N'Kenya',N'KENYA','KE','KEN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(115,'408',N'Korea, Democratic People''s Republic of',N'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF','KP','PRK')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(116,'410',N'Korea, Republic of',N'KOREA, REPUBLIC OF','KR','KOR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(117,'414',N'Kuwait',N'KUWAIT','KW','KWT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(118,'417',N'Kyrgyzstan',N'KYRGYZSTAN','KG','KGZ')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(119,'418',N'Lao People''s Democratic Republic',N'LAO PEOPLE''S DEMOCRATIC REPUBLIC','LA','LAO')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(120,'422',N'Lebanon',N'LEBANON','LB','LBN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(121,'426',N'Lesotho',N'LESOTHO','LS','LSO')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(122,'428',N'Latvia',N'LATVIA','LV','LVA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(123,'430',N'Liberia',N'LIBERIA','LR','LBR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(124,'434',N'Libyan Arab Jamahiriya',N'LIBYAN ARAB JAMAHIRIYA','LY','LBY')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(125,'438',N'Liechtenstein',N'LIECHTENSTEIN','LI','LIE')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(126,'440',N'Lithuania',N'LITHUANIA','LT','LTU')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(127,'442',N'Luxembourg',N'LUXEMBOURG','LU','LUX')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(128,'446',N'Macao',N'MACAO','MO','MAC')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(129,'450',N'Madagascar',N'MADAGASCAR','MG','MDG')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(130,'454',N'Malawi',N'MALAWI','MW','MWI')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(131,'458',N'Malaysia',N'MALAYSIA','MY','MYS')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(132,'462',N'Maldives',N'MALDIVES','MV','MDV')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(133,'466',N'Mali',N'MALI','ML','MLI')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(134,'470',N'Malta',N'MALTA','MT','MLT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(135,'474',N'Martinique',N'MARTINIQUE','MQ','MTQ')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(136,'478',N'Mauritania',N'MAURITANIA','MR','MRT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(137,'480',N'Mauritius',N'MAURITIUS','MU','MUS')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(138,'484',N'Mexico',N'MEXICO','MX','MEX')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(139,'492',N'Monaco',N'MONACO','MC','MCO')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(140,'496',N'Mongolia',N'MONGOLIA','MN','MNG')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(141,'498',N'Moldova, Republic of',N'MOLDOVA, REPUBLIC OF','MD','MDA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(142,'500',N'Montserrat',N'MONTSERRAT','MS','MSR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(143,'504',N'Morocco',N'MOROCCO','MA','MAR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(144,'508',N'Mozambique',N'MOZAMBIQUE','MZ','MOZ')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(145,'512',N'Oman',N'OMAN','OM','OMN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(146,'516',N'Namibia',N'NAMIBIA','NA','NAM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(147,'520',N'Nauru',N'NAURU','NR','NRU')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(148,'524',N'Nepal',N'NEPAL','NP','NPL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(149,'528',N'Netherlands',N'NETHERLANDS','NL','NLD')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(150,'530',N'Netherlands Antilles',N'NETHERLANDS ANTILLES','AN','ANT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(151,'533',N'Aruba',N'ARUBA','AW','ABW')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(152,'540',N'New Caledonia',N'NEW CALEDONIA','NC','NCL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(153,'548',N'Vanuatu',N'VANUATU','VU','VUT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(154,'554',N'New Zealand',N'NEW ZEALAND','NZ','NZL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(155,'558',N'Nicaragua',N'NICARAGUA','NI','NIC')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(156,'562',N'Niger',N'NIGER','NE','NER')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(157,'566',N'Nigeria',N'NIGERIA','NG','NGA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(158,'570',N'Niue',N'NIUE','NU','NIU')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(159,'574',N'Norfolk Island',N'NORFOLK ISLAND','NF','NFK')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(160,'578',N'Norway',N'NORWAY','NO','NOR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(161,'580',N'Northern Mariana Islands',N'NORTHERN MARIANA ISLANDS','MP','MNP')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(162,'581',N'United States Minor Outlying Islands',N'UNITED STATES MINOR OUTLYING ISLANDS','UM','UMI')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(163,'583',N'Micronesia, Federated States of',N'MICRONESIA, FEDERATED STATES OF','FM','FSM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(164,'584',N'Marshall Islands',N'MARSHALL ISLANDS','MH','MHL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(165,'585',N'Palau',N'PALAU','PW','PLW')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(166,'586',N'Pakistan',N'PAKISTAN','PK','PAK')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(167,'591',N'Panama',N'PANAMA','PA','PAN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(168,'598',N'Papua New Guinea',N'PAPUA NEW GUINEA','PG','PNG')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(169,'600',N'Paraguay',N'PARAGUAY','PY','PRY')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(170,'604',N'Peru',N'PERU','PE','PER')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(171,'608',N'Philippines',N'PHILIPPINES','PH','PHL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(172,'612',N'Pitcairn',N'PITCAIRN','PN','PCN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(173,'616',N'Poland',N'POLAND','PL','POL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(174,'620',N'Portugal',N'PORTUGAL','PT','PRT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(175,'624',N'Guinea-Bissau',N'GUINEA-BISSAU','GW','GNB')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(176,'626',N'Timor-Leste',N'TIMOR-LESTE','TL','TLS')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(177,'630',N'Puerto Rico',N'PUERTO RICO','PR','PRI')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(178,'634',N'Qatar',N'QATAR','QA','QAT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(179,'638',N'Reunion',N'REUNION','RE','REU')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(180,'642',N'Romania',N'ROMANIA','RO','ROU')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(181,'643',N'Russian Federation',N'RUSSIAN FEDERATION','RU','RUS')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(182,'646',N'Rwanda',N'RWANDA','RW','RWA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(183,'654',N'Saint Helena',N'SAINT HELENA','SH','SHN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(184,'659',N'Saint Kitts and Nevis',N'SAINT KITTS AND NEVIS','KN','KNA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(185,'660',N'Anguilla',N'ANGUILLA','AI','AIA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(186,'662',N'Saint Lucia',N'SAINT LUCIA','LC','LCA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(187,'666',N'Saint Pierre and Miquelon',N'SAINT PIERRE AND MIQUELON','PM','SPM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(188,'670',N'Saint Vincent and the Grenadines',N'SAINT VINCENT AND THE GRENADINES','VC','VCT')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(189,'674',N'San Marino',N'SAN MARINO','SM','SMR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(190,'678',N'Sao Tome and Principe',N'SAO TOME AND PRINCIPE','ST','STP')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(191,'682',N'Saudi Arabia',N'SAUDI ARABIA','SA','SAU')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(192,'686',N'Senegal',N'SENEGAL','SN','SEN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(193,'690',N'Seychelles',N'SEYCHELLES','SC','SYC')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(194,'694',N'Sierra Leone',N'SIERRA LEONE','SL','SLE')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(195,'702',N'Singapore',N'SINGAPORE','SG','SGP')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(196,'703',N'Slovakia',N'SLOVAKIA','SK','SVK')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(197,'704',N'Viet Nam',N'VIET NAM','VN','VNM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(198,'705',N'Slovenia',N'SLOVENIA','SI','SVN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(199,'706',N'Somalia',N'SOMALIA','SO','SOM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(200,'710',N'South Africa',N'SOUTH AFRICA','ZA','ZAF')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(201,'716',N'Zimbabwe',N'ZIMBABWE','ZW','ZWE')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(202,'724',N'Spain',N'SPAIN','ES','ESP')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(203,'732',N'Western Sahara',N'WESTERN SAHARA','EH','ESH')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(204,'736',N'Sudan',N'SUDAN','SD','SDN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(205,'740',N'Suriname',N'SURINAME','SR','SUR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(206,'744',N'Svalbard and Jan Mayen',N'SVALBARD AND JAN MAYEN','SJ','SJM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(207,'748',N'Swaziland',N'SWAZILAND','SZ','SWZ')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(208,'752',N'Sweden',N'SWEDEN','SE','SWE')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(209,'756',N'Switzerland',N'SWITZERLAND','CH','CHE')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(210,'760',N'Syrian Arab Republic',N'SYRIAN ARAB REPUBLIC','SY','SYR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(211,'762',N'Tajikistan',N'TAJIKISTAN','TJ','TJK')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(212,'764',N'Thailand',N'THAILAND','TH','THA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(213,'768',N'Togo',N'TOGO','TG','TGO')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(214,'772',N'Tokelau',N'TOKELAU','TK','TKL')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(215,'776',N'Tonga',N'TONGA','TO','TON')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(216,'780',N'Trinidad and Tobago',N'TRINIDAD AND TOBAGO','TT','TTO')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(217,'784',N'United Arab Emirates',N'UNITED ARAB EMIRATES','AE','ARE')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(218,'788',N'Tunisia',N'TUNISIA','TN','TUN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(219,'792',N'Turkey',N'TURKEY','TR','TUR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(220,'795',N'Turkmenistan',N'TURKMENISTAN','TM','TKM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(221,'796',N'Turks and Caicos Islands',N'TURKS AND CAICOS ISLANDS','TC','TCA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(222,'798',N'Tuvalu',N'TUVALU','TV','TUV')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(223,'800',N'Uganda',N'UGANDA','UG','UGA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(224,'804',N'Ukraine',N'UKRAINE','UA','UKR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(225,'807',N'Macedonia, the Former Yugoslav Republic of',N'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MK','MKD')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(226,'818',N'Egypt',N'EGYPT','EG','EGY')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(227,'826',N'United Kingdom',N'UNITED KINGDOM','GB','GBR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(228,'834',N'Tanzania, United Republic of',N'TANZANIA, UNITED REPUBLIC OF','TZ','TZA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(229,'840',N'United States',N'UNITED STATES','US','USA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(230,'850',N'Virgin Islands, U.s.',N'VIRGIN ISLANDS, U.S.','VI','VIR')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(231,'854',N'Burkina Faso',N'BURKINA FASO','BF','BFA')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(232,'858',N'Uruguay',N'URUGUAY','UY','URY')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(233,'860',N'Uzbekistan',N'UZBEKISTAN','UZ','UZB')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(234,'862',N'Venezuela',N'VENEZUELA','VE','VEN')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(235,'876',N'Wallis and Futuna',N'WALLIS AND FUTUNA','WF','WLF')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(236,'882',N'Samoa',N'SAMOA','WS','WSM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(237,'887',N'Yemen',N'YEMEN','YE','YEM')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(238,'891',N'Serbia and Montenegro',N'SERBIA AND MONTENEGRO','CS','SCG')
 	insert into [fx].[Countries]([CountryID],[CountryCode],[ShortName],[FullName],[Alfa2],[Alfa3]) values(239,'894',N'Zambia',N'ZAMBIA','ZM','ZMB')
set identity_insert [fx].[Countries] off

end

go
if exists (select * from sysobjects where id = object_id(N'fx.calculateYield') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.calculateYield

set quoted_identifier on
go

/*
<documentation>
<summary>
	Returns yield (in %%), based on time period (taking into account leap years) 
	and revenue.
</summary>

<parameters>
<param name="Start">Period start date</param>
<param name="End">Period finish date</param>
<param name="PresentValue">Price at start date</param>
<param name="FutureValue">Price at end date</param>
</parameters>

<returns>
	Yield as percentage
</returns>

<example>
	-- This example shows yield for paper which price will grow up twice in next ~3 years (1000 days)
	print fx.calculateYield(getDate(), getDate() + 1000, 100.00, 200.00)
	-- 36.5191
</example>

<author>
	Alex Zakharov
	Copyright (c) AnjLab 2008, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>
</documentation>
*/

create function [fx].[calculateYield](@Start datetime, @End datetime, @PresentValue money, @FutureValue money) 
returns float as
begin

declare @Yield float

select @Yield = 
	100 * ((@FutureValue - @PresentValue ) / @PresentValue ) * 
	1 / (cast(sum([Days] * cast(LeapYear - 1 as bit)) as real) / 365 + cast(sum([Days] * LeapYear) as real) / 366)
from (
	select 
		datediff(dd, YearStartDate, YearEndDate) as [Days],
		fx.checkLeapYear(YearStartDate) as LeapYear
	from (
		select 
			YearStartDate = case Years when year(@Start) then @Start else '01/01/' + str(Years) end,
			YearEndDate   = case Years when year(@End)   then @End	 else '01/01/' + str(Years + 1) end
		from (
			select year(@Start) + RecordId - 1 as Years
			from fx.getEmptyTable(datediff(year, @Start, @End) + 1)
		) as a
	) as b
) as c


return @Yield

end

go

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


if exists (select * from sysobjects where id = object_id(N'fx.getBinaryAsString') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.getBinaryAsString

set quoted_identifier on
go

/*
<documentation>
<summary>
	Returns hexadecimal representation of binary data, using chars [0-0a-f]
</summary>

<description>
	Function has two 'parts':

	PART ONE: takes large VarbinaryValue chunks (greater than four bytes) 
	and splits them into half, calling the function recursively with 
	each half until the chunks are only four bytes long

	PART TWO: notices the VarbinaryValue is four bytes or less, and 
	starts actually processing these four byte chunks. It does this
	by splitting the least-significant (rightmost) byte into two 
	hexadecimal characters and recursively calling the function
	with the more significant bytes until none remain (four recursive
	calls in total).
</description>

<parameters>
<param name="VarbinaryValue">binary data to be converted to Hexadecimal </param>
</parameters>

<returns>
	Hexadecimal representation of binary data, using chars [0-0a-f]
</returns>

<author>
	Craig Dunn
	Based on ufn_VarbinaryToVarcharHex by Clay Beatty.
</author>

<remarks>
	Clay Beatty's original function was written for Sql Server 2000.
	Sql Server 2005 introduces the varbinary(max) datatype which this 
	function now uses.

	References
	----------
	1) MSDN: Using Large-Value Data Types
	http://msdn2.microsoft.com/en-us/library/ms178158.aspx

	2) Clay's "original" Script, Save, Export SQL 2000 Database Diagrams
	http://www.thescripts.com/forum/thread81534.html or
	
</remarks>

<example>
	print fx.getBinaryAsString(0x675456BC54D)
	--> 0675456bc54d
</example>

</documentation>
*/

create function [fx].[getBinaryAsString]
(
	@VarbinaryValue	varbinary(max)
)
returns varchar(max) AS
	begin

	declare @NumberOfBytes 	int

	set @NumberOfBytes = datalength(@VarbinaryValue)
	-- PART ONE --
	if (@NumberOfBytes > 4)
	begin
		declare @FirstHalfNumberOfBytes int
		declare @SecondHalfNumberOfBytes int
		set @FirstHalfNumberOfBytes  = @NumberOfBytes/2
		set @SecondHalfNumberOfBytes = @NumberOfBytes - @FirstHalfNumberOfBytes
		-- Call this function recursively with the two parts of the input split in half
		return fx.getBinaryAsString(cast(substring(@VarbinaryValue, 1					        , @FirstHalfNumberOfBytes)  as varbinary(max)))
			 + fx.getBinaryAsString(cast(substring(@VarbinaryValue, @FirstHalfNumberOfBytes+1 , @SecondHalfNumberOfBytes) as varbinary(max)))
	end
	
	if (@NumberOfBytes = 0)
	begin
		return ''	-- No bytes found, therefore no 'hex string' is returned
	end
	
	-- PART TWO --
	declare @LowByte 		int
	declare @HighByte 		int
	-- @NumberOfBytes <= 4 (four or less characters/8 hex digits were input)
	--						 eg. 88887777 66665555 44443333 22221111
	-- We'll process ONLY the right-most (least-significant) Byte, which consists
	-- of eight bits, or two hexadecimal values (eg. 22221111 --> XY) 
	-- where XY are two hex digits [0-f]

	-- 1. Carve off the rightmost four bits/single hex digit (ie 1111)
	--    BINARY AND 15 will result in a number with maxvalue of 15
	set @LowByte = CAST(@VarbinaryValue as int) & 15
	-- Now determine which ASCII char value
	set @LowByte = case 
	when (@LowByte < 10)		-- 9 or less, convert to digits [0-9]
		then (48 + @LowByte)	-- 48 ASCII = 0 ... 57 ASCII = 9
		else (87 + @LowByte)	-- else 10-15, convert to chars [a-f]
	end							-- (87+10)97 ASCII = a ... (87+15_102 ASCII = f

	-- 2. Carve off the rightmost eight bits/single hex digit (ie 22221111)
	--    Divide by 16 does a shift-left (now processing 2222)
	set @HighByte = CAST(@VarbinaryValue as int) & 255
	set @HighByte = (@HighByte / 16)
	-- Again determine which ASCII char value	
	set @HighByte = case 
	when (@HighByte < 10)		-- 9 or less, convert to digits [0-9]
		then (48 + @HighByte)	-- 48 ASCII = 0 ... 57 ASCII = 9
		else (87 + @HighByte)	-- else 10-15, convert to chars [a-f]
	end							-- (87+10)97 ASCII = a ... (87+15)102 ASCII = f
	
	-- 3. Trim the byte (two hex values) from the right (least significant) input Binary
	--    in preparation for further parsing
	set @VarbinaryValue = substring(@VarbinaryValue, 1, (@NumberOfBytes-1))

	-- 4. Recursively call this method on the remaining Binary data, concatenating the two 
	--    hexadecimal 'values' we just decoded as their ASCII character representation
	--    ie. we pass 88887777 66665555 44443333 back to this function, adding XY to the result string
	return fx.getBinaryAsString(@VarbinaryValue) + char(@HighByte) + char(@LowByte)
end

go
if exists (select * from sysobjects where id = object_id(N'fx.getEmptyTable') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.getEmptyTable

set quoted_identifier on
go

/*
<documentation>
<summary>
	Returns rowset with defined number of record
</summary>

<parameters>
<param name="Records">Number of records to be generated</param>
</parameters>

<returns>
	Table with one column RecordID which containts number of record
</returns>

<example>
	-- Example 1. Multiply scalar value 
		select [Value] = 'Hello, World!' from fx.getEmptyTable(5)
		
	-- Example 2. Get list of numbers between two values (5 and 10)
		select RecordId from fx.getEmptyTable(10) where RecordID >= 5
		
	-- Example 3. Get list of missed numbers in sequence
		;with data(RecordID) as (
			select top 10 RecordID from fx.getEmptyTable(20) order by newid())

			select f.RecordID
			from fx.getEmptyTable(20) f
			left join data t on f.RecordID = t.RecordID
			where t.RecordID is null
			order by f.RecordID desc
			
	-- Example 4. Get list of years between two dates (now and 1000 days ago)
		select RecordId from fx.getEmptyTable(year(getDate())) where RecordID >= year(getDate()-1000)	
</example>

<author>
	Alex Zakharov
	Copyright (c) AnjLab 2008, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>

</documentation>
*/

create function [fx].[getEmptyTable](@Records int) 
returns @Table table(RecordID int) as
begin

while @Records > 0 begin
	insert into @Table values(@Records)
	set @Records = @Records - 1
end

return

end

go


if exists (select * from sysobjects where id = object_id(N'fx.getPeriods') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.getPeriods

set quoted_identifier on
go


/*
<documentation>
<summary>
	Returns set of date and time periods (hours, days, months, etc) between given start 
	and end dates
</summary>

<parameters>
<param name="Grouping">Grouping mode, i.e. period length. Possible values:
	1 - second
	2 - minute
	3 - hour
	4 - day
	5 - month
	6 - year
</param>
<param name="Start">Start of period</param>
<param name="Finish">End of period</param>
</parameters>

<returns>
	Table with four columns:
	- PeriodNumber
	- PeriodStart
	- PeriodEnd
	- PeriodLabel - value of hour, day, month, etc 
</returns>

<example>
	-- This example returns sequence of hours for last 24 hours
	select * from  fx.getPeriods(3, dateadd(hh, -24, getDate()), getDate())
</example>

<author>
	Alex Zakharov
	Copyright © AnjLab 2010, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>
</documentation>
*/


create function [fx].[getPeriods](@Grouping int, @Start datetime, @End datetime) 
returns @Table table(PeriodStart datetime, PeriodEnd datetime, PeriodNumber int, PeriodLabel nvarchar(100))
as
begin

	set @Start = fx.reduceDate(@Grouping, @Start, 0)
	set @End = fx.reduceDate(@Grouping, @End, 1)

	declare @Distance int
	set @Distance = case @Grouping 
		when 1 then datediff(ss, @Start, @End) + 1
		when 2 then datediff(mi, @Start, @End) + 1
		when 3 then datediff(hh, @Start, @End) + 1
		when 4 then datediff(dd, @Start, @End) + 1
		when 5 then datediff(mm, @Start, @End) + 1
		when 6 then datediff(yy, @Start, @End) + 1
		else 1
		end
		
	insert into @Table
	select 
		StartDate = [Date],
		EndDate = fx.reduceDate(@Grouping, [Date], 1),
		PeriodNumber = RecordID,
		[Label] =case @Grouping
			when 1 then datename(ss, [Date])
			when 2 then datename(mi, [Date])
			when 3 then datename(hh, [Date])
			when 4 then datename(dd, [Date])
			when 5 then datename(mm, [Date])
			when 6 then datename(yy, [Date])
			else 'All data'
			end
	from (
		select RecordID, [Date] = case @Grouping
			when 1 then dateadd(ss, RecordID - 1, @Start)
			when 2 then dateadd(mi, RecordID - 1, @Start)
			when 3 then dateadd(hh, RecordID - 1, @Start)
			when 4 then dateadd(dd, RecordID - 1, @Start)
			when 5 then dateadd(mm, RecordID - 1, @Start)
			when 6 then dateadd(yy, RecordID - 1, @Start)
			else @Start
			end
		from fx.getEmptyTable(@Distance)
	) as a
	order by [Date]
		
	return

end

go
if exists (select * from sysobjects where id = object_id(N'fx.getStringAsTable') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.getStringAsTable

set quoted_identifier on
go

/*
<documentation>
<summary>
	Returns rowset from string with delimiters
</summary>

<parameters>
<param name="String">String to be parsed</param>
<param name="Delimeter">Delimeter. Can be one or more chars</param>
</parameters>

<returns>
	Table with one column [Value]
</returns>

<example>
	select * from fx.getStringAsTable(N'abc, d, e f', N',')
	-- 
	--	abc
	--	d
	--	e f
</example>

<author>
	Alex Zakharov
	Copyright © AnjLab 2010, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>
</documentation>
*/

create function [fx].[getStringAsTable](@String nvarchar(max), @Delimiter nvarchar(10)) 
returns @Data table([Value] nvarchar(max)) as
begin

	with Data(Test) as (select Test = cast(N'<a>' + replace(@String, @Delimiter, N'</a><a>') + '</a>' as xml))
		insert into @Data
		select ltrim(Nodes.Node.value(N'.', N'nvarchar(255)')) as [Value]
		from Data
		cross apply Test.nodes (N'//a') Nodes(Node)

	return

end

go
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

if exists (select * from sysobjects where id = object_id(N'fx.getXMLAttributes') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.getXMLAttributes

set quoted_identifier on
go

/*
<documentation>

<summary>
	Returns attributes for given XML element as table
</summary>

<remarks>
	The function returns attributes for first (root) XML element
	
	Limitations:
	- XML namespaces are not supported
	- Resulted attribute value length is limited by nvarchar(max) data type
</remarks>

<parameters>
<param name="XMLData">Source XML data</param>
</parameters>

<returns>
	Table which includes the following columns:
	- Position          : attribute position in element definition
	- AttributeName     : 
	- AttributeValue    :
</returns>

<example>
	-- Example 1: 
	declare @XMLData xml
	set @XMLData = (select top 1 * from fx.Countries for xml auto)
	select * from fx.getXMLAttributes(@XMLData)
	
	-- Example 2: Using together with getXMLElements function:
	declare @XMLData1 xml
	set @XMLData1 = (select top 2 * from fx.Countries for xml auto, root)
	
	select *
	from fx.getXMLElements(@XMLData1) a
	cross apply fx.getXMLAttributes(a.[Query])
</example>

<author>
	Alex Zakharov
	Copyright (c) AnjLab 2011, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>

</documentation>
*/

create function [fx].[getXMLAttributes](@XMLData xml) 
returns @Attributes table(
	Position int identity(1, 1) primary key clustered,
	AttributeName nvarchar(255),
	AttributeValue nvarchar(max))
as
begin

	insert into @Attributes(AttributeName, AttributeValue)
	select 
		[Name]  = node.value('local-name(.)', 'nvarchar(max)') ,
		[Value] = node.value('.', 'nvarchar(max)') 
	from @XMLData.nodes('*[1]/@*') this(node) 

	return
	
end

go


if exists (select * from sysobjects where id = object_id(N'fx.getXMLElements') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.getXMLElements

set quoted_identifier on
go


/*
<documentation>

<summary>
	Returns any valid XML as hierarchical table
</summary>

<parameters>
<param name="XMLData">Source XML data</param>
</parameters>

<returns>
	Table which includes the following columns:
	- NodeId        : autogenerated identifier of node
	- NodeLevel     : node's level in hierarchy
	- ParentNoteId  : reference to parent node id (root has null parent)
	- NodeName      : node name
	- ParentNodeName: name of parent node
	- Value         : node text value (without children)
	- Query         : part of source XML which contains the node data
</returns>

<example>
	-- Example 1: 

	declare @XMLData xml	
	set @XMLData = (select * from fx.Countries for xml path, root('World'))
	select * from fx.getXMLElements(@XMLData)

</example>

<author>
	Alex Zakharov
	Copyright (c) AnjLab 2011, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>

</documentation>
*/

create function [fx].[getXMLElements](@XMLData xml) 
returns @Nodes table(
	NodeID int identity(1, 1) primary key clustered,
	ParentNodeID int,
	NodeName nvarchar(64),
	ParentNodeName nvarchar(64),
	NodePosition int,
	[Value] nvarchar(max),
	[Query] xml)
as
begin
	
	insert into @Nodes(ParentNodeName, NodeName, [Value], [Query])
	select 
		e.value('local-name(..)', 'varchar(max)') as ParentNodeName,
		e.value('local-name(.)', 'varchar(max)') as NodeName,
		e.value('text()[1]', 'nvarchar(max)'),
		e.query('.')
	from @XMLData.nodes('//*[local-name(.) > ""]') as n(e)

	-- set parent node id
	update @Nodes set ParentNodeID = b.ParentNodeID
	from @Nodes a
	cross apply (select max(NodeID) as ParentNodeId from @Nodes where NodeID < a.NodeID and NodeName = a.ParentNodeName) b 

	-- Set node position
	update @Nodes set NodePosition = isnull(b.NodePosition, 1)
	from @Nodes a
	left join (
		select NodeId,
			NodePosition = row_number() over(partition by ParentNodeId, NodeName order by NodeId)
		from @Nodes) b on b.NodeID = a.NodeID

	return
end

go

if exists (select * from sysobjects where id = object_id(N'fx.reduceDate') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.reduceDate

set quoted_identifier on
go

/*
<documentation>
<summary>
	For given datetime returns start or end of current hour, day, month, etc,
	in other words, truncates datetime. There Start means first millisecond of
	given period, End - last millisecond.
</summary>

<parameters>
<param name="Grouping">Period length. Possible values:
	1 - second
	2 - minute
	3 - hour
	4 - day
	5 - month
	6 - year
</param>
<param name="Date">Datetime to be changed</param>
<param name="Mode">Points what should be returned - period start or period end</param>
</parameters>

<returns>
	Datetime
</returns>

<example>
	-- The query below returns all possible 12 variants for current date and time.
	-- NOTE, it also includes @Grouping = 7 which out of bound. In this case the function 
	-- just returns input date.
	
	select 
		[@Grouping] = RecordID,
		[@Date] = getDate(),
		[@Mode = 0] = fx.reduceDate(RecordID, getDate(), 0),
		[@Mode = 1] = fx.reduceDate(RecordID, getDate(), 1)
	from fx.getEmptyTable(7)
</example>

<author>
	Alex Zakharov
	Copyright © AnjLab 2010, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>
</documentation>
*/

create function [fx].[reduceDate](@Grouping int, @Date datetime, @Mode bit) 
returns datetime as
begin

	declare @Result datetime

	select @Result = [Date] from
		(select [Date] = case when @Grouping in(6)                then dateadd(mm, -datepart(mm, [Date]) + 1, [Date]) else [Date] end from 
		(select [Date] = case when @Grouping in(5, 6)             then dateadd(dd, -datepart(dd, [Date]) + 1, [Date]) else [Date] end from 
		(select [Date] = case when @Grouping in(4, 5, 6)          then dateadd(hh, -datepart(hh, [Date]), [Date])     else [Date] end from 
		(select [Date] = case when @Grouping in(3, 4, 5, 6)       then dateadd(mi, -datepart(mi, [Date]), [Date])     else [Date] end from 
		(select [Date] = case when @Grouping in(2, 3, 4, 5, 6)    then dateadd(ss, -datepart(ss, [Date]), [Date])     else [Date] end from 
		(select [Date] = case when @Grouping in(1, 2, 3, 4, 5, 6) then dateadd(ms, -datepart(ms, @Date), @Date)       else @Date  end
	) ms ) ss ) mi ) hh ) dd ) mm 


	if @Mode = 1 
		set @Result = dateadd(ms, -2, case @Grouping
			when 1 then dateadd(ss, 1, @Result)
			when 2 then dateadd(mi, 1, @Result)
			when 3 then dateadd(hh, 1, @Result)
			when 4 then dateadd(dd, 1, @Result)
			when 5 then dateadd(mm, 1, @Result)
			when 6 then dateadd(yy, 1, @Result)
			else @Result
			end)

	return @Result

end

go
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

if exists (select * from sysobjects where id = object_id(N'fx.truncateString') and xtype in (N'FN', N'IF', N'TF'))
	drop function fx.truncateString

set quoted_identifier on
go

/*
<documentation>
<summary>
	Returns input string with replaced sequences of several the same given symbols
	with one symbol
</summary>

<parameters>
<param name="String">Initial string</param>
<param name="Symbol">Symbol, whose sequences will be tuncated</param>
</parameters>

<returns>
	Truncated string
</returns>

<example>
	print fx.truncateString(N'       b    c d     e     ', space(1))
	--  ' b c d e '
</example>

<author>
	Alex Zakharov
	Copyright (c) AnjLab 2008, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
	The main idea was discussed on http://sql.ru
</author>
</documentation>
*/

create function [fx].[truncateString](@String nvarchar(max), @Symbol nchar(1))
returns nvarchar(max) as
begin

	return 
		replace(
			replace(
				replace(@String, @Symbol + @Symbol, @Symbol + nchar(1))
				, nchar(1) + @Symbol, space(0))
			, nchar(1), space(0))

end

go
if exists (select * from sysobjects where id = object_id(N'fx.getXMLTable') and xtype in (N'P'))
	drop procedure fx.getXMLTable

set quoted_identifier on
go

/*
<documentation>

<summary>
	Returns XML data as table
</summary>

<remarks>
	XML attributes are presented as columns
	XML namespaces are not supported
</remarks>

<parameters>
<param name="XMLData">Source XML</param>
</parameters>

<example>
	-- Example 1
		declare @XMLData xml
		set @XMLData = (select * from fx.Countries for xml auto, root)
		exec fx.getXMLTable @XMLData
	
</example>

<author>
	Alex Zakharov
	Copyright (c) AnjLab 2011, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>

</documentation>
*/

create procedure fx.getXMLTable(@XMLData xml) as
begin
	
	set nocount on
	declare @SQL nvarchar(max)
	
	select 
		NodeID,
		ParentNodeId,
		NodeName,
		NodePosition,
		[Value],
		AttributeName,
		AttributeValue
	into #Table
	from fx.getXMLElements(@XMLData) a
	cross apply (
		select 0 as Position, null as AttributeName, null as AttributeValue
		union 
		select * from fx.getXMLAttributes(a.[Query])) b
	

	set @SQL = (
		select N'[' + ltrim(rtrim([AttributeName])) + N'],' as 'data()' 
		from (select distinct AttributeName from #Table) as a
		for xml path('')) 

	if len(@SQL) > 0 
	begin
		set @SQL = N'select * from #Table a pivot (max(AttributeValue) for AttributeName in (' + 
			substring(@SQL, 1, len(@SQL) - 1) + ')) b'
	
		exec sp_executesql @SQL
	
	end else
		select 				
			NodeID,
			ParentNodeId,
			NodeName,
			NodePosition,
			[Value]
		from #Table

	drop table #Table
end

go
if exists (select * from sysobjects where id = object_id(N'fx.help') and xtype in (N'P'))
	drop procedure fx.help

set quoted_identifier on
go

/*
<documentation>

<summary>
	Shows text description for fx programmable objects
</summary>

<remarks>
	FX programable objects documentation is stored directly in onject definition (syscomments table).
	Documentation is comment block with correct XML inside, in can be placed everywhere in object body.
	XML must have root tag 'documentation', inside you can use any XML structure.
	
	While printing documentation this procedure prints element name (in upper case) and, on next row,
	element value. This is main constuction we call 'section'.
	
	Second supported construction is enumeration (look at parameters section of this documentation).
	Each list element should have 'name' attribute. The procedure prints name value and element value on 
	next row.
</remarks>

<parameters>
<param name="Object">Name of fx programmable objects (without schema)</param>
</parameters>

<example>
	exec fx.help 'getXMLTable'
</example>

<author>
	Alex Zakharov
	Copyright © AnjLab 2011, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>

</documentation>
*/

create procedure fx.help(@Object sysname = 'Help') as
begin

	set nocount on

	declare @Documentation xml
	declare @Element nvarchar(100), @Name nvarchar(100), @Value nvarchar(max)

	if not exists(
		select * from sysobjects 
		where id = object_id(N'fx.' + @Object)and xtype in ('P', 'V', 'FN', 'TF', 'TR'))
	begin
		raiserror('Specified object is not exist. ', 16, 1)	
		return -1
	end

	-- extract documentation XML from object body stored in syscommnts
	begin try

		;with data([Text]) as (
			select [Text] = (
				select [text] 
				from syscomments 
				where id = object_id('fx.' + @Object)
				for xml path(''), type).value('.', 'varchar(max)'))

			select @Documentation = 
				substring([Text], 
					charindex('<documentation>', [Text], 0) , 
					charindex('</documentation>', [Text], 0) - charindex('<documentation>', [Text], 0) + 16) 
			from data
	
	end try
	begin catch
		raiserror('Object''s documentation is absent or not well-formed.', 16, 1)	
		print 'Check exec fx.Help for more information'
		return -1
	end catch
	
	-- Transform XML data to relational table
	declare Data cursor for 
	select
		Element = NodeName,
		-- extract Name attribute value for node
		[Name]  = Query.value('*[1]/@name', 'nvarchar(100)'),
		[Value]
	from fx.getXMLElements(@Documentation) a
	where ParentNodeId is not null

	open Data
	fetch next from Data into @Element, @Name, @Value

	-- Print each record from the table
	while @@fetch_status = 0
	begin
		
		-- section
		if @Name is null print upper(@Element) + nchar(10) + isnull(@Value, space(0))
		-- subsection
		else print N'	' + @Name + nchar(10) + N'	' + isnull(@Value, space(0)) + nchar(10)

		fetch next from Data into @Element, @Name, @Value
	end

	close Data
	deallocate Data

end

go
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
		set @String = replace(@String, nchar(10), space(0))

		while charindex(nchar(13), @String) > 0 or (charindex(nchar(13), @String) = 0 and len(@String) > 4000)
			if (charindex(nchar(13), @String) = 0 and len(@String) > 4000)
			begin
				print substring(@String, 1, 4000)
				set @String = substring(@String, 4001, len(@String) - 4000)
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
if exists (select * from sysobjects where id = object_id(N'fx.scriptData') and xtype in (N'P'))
	drop procedure fx.scriptData

set quoted_identifier on
go
/*
<documentation>
<summary>
	Generating INSERT statements from existing data. 
</summary>

<remarks>
	Generated INSERTS can be executed to regenerate the data at some other location.
	This procedure is also useful to create a database setup, where in you can 
	script your data along with your table definitions.

	This procedure may not work with tables with too many columns.
	Results can be unpredictable with huge text columns or SQL Server 2000's sql_variant data types
	Whenever possible, Use @ScriptColumnsList parameter to ommit column list in the INSERT statement, for better results
	IMPORTANT: This procedure is not tested with internation data (Extended characters or Unicode). If needed
	you might want to convert the datatypes of character variables in this procedure to their respective unicode counterparts
	like nchar and nvarchar

	ALSO NOTE THAT THIS PROCEDURE IS NOT UPDATED TO WORK WITH NEW DATA TYPES INTRODUCED IN SQL SERVER 2005 
</remarks>

<parameters>
<param name="Schema">Scripted object's schema</param>
<param name="Object">The table/view for which the INSERT statements will be generated using the existing data</param>
<param name="TargetObject">Use this parameter to specify a different table name into which the data will be inserted</param>
<param name="ScriptColumnsList">Use this parameter to include/ommit column list in the generated INSERT statement</param>
<param name="Conditions">Use this parameter to filter the rows based on a filter condition (using where)</param>
<param name="IncludeTimestamp">Specify 1 for this parameter, if you want to include the TIMESTAMP/ROWVERSION column's data in the INSERT statement</param>
<param name="DebugMode">If @DebugMode is set to 1, the SQL statements constructed by this procedure will be printed for later examination</param>
<param name="OmitIdentity">Use this parameter to ommit the identity columns</param>
<param name="Top">Use this parameter to generate INSERT statements only for the TOP n rows</param>
<param name="IncludedColumns">List of columns to be included in the INSERT statement</param>
<param name="ExcludedColumns">List of columns to be excluded from the INSERT statement</param>
<param name="DisableConstraints">When 1, disables foreign key constraints and enables them after the INSERT statements</param>
<param name="OmitComputed">When 1, computed columns will not be included in the INSERT statement</param>
<param name="PrintResult">Flag to determine should resulted script be printed to output</param>
<param name="Result">SQL statement</param>
</parameters>

<example>
	-- Example 1:	To generate INSERT statements for table 'fx.Countries':
	exec fx.scriptData 'fx', 'Countries'

	-- Example 2: 	To ommit the column list in the INSERT statement: (Column list is included by default)
	-- IMPORTANT: If you have too many columns, you are advised to ommit column list, as shown below,
	-- to avoid erroneous results
	exec fx.scriptData 'fx', 'Countries', @ScriptColumnsList = 0

	-- Example 3:	To generate INSERT statements for 'TheCopy' table from 'fx.Countries' table:
	exec fx.scriptData 'fx', 'Countries', 'TheCopy'

	-- Example 4:	To generate INSERT statements for 'fx.Countries' table for only those short name 
	-- which contain the word 'A%' in them:
	-- NOTE: Do not complicate the from or where clause here. It's assumed that you are good with T-SQL if you are using this parameter
	exec fx.scriptData 'fx', 'Countries', @Conditions = " from fx.Countries where ShortName like 'A%'"

	-- Example 5: 	To specify that you want to include TIMESTAMP column's data as well in the INSERT statement:
	-- (By default TIMESTAMP column's data is not scripted)
	exec fx.scriptData 'fx', 'Countries', @IncludeTimestamp = 1

	-- Example 6: 	If you are not the owner of the table, use @Schema parameter to specify the owner name
	-- To use this option, you must have select permissions on that table
	exec fx.scriptData 'fx', 'Countries'

	-- Example 7: 	To generate INSERT statements excluding (ommiting) IDENTITY columns:
	-- (By default IDENTITY columns are included in the INSERT statement)
	exec fx.scriptData 'fx', 'Countries', @OmitIdentity = 1

	-- Example 8: To generate INSERT statements for the TOP 10 rows in the table:
	exec fx.scriptData 'fx', 'Countries', @Top = 10

	-- Example 9: 	To generate INSERT statements with only those columns you want:
	exec fx.scriptData 'fx', 'Countries', @IncludedColumns = "'CountryCode','Alfa2','Alfa3'"

	-- Example 10: 	To generate INSERT statements by omitting certain columns:
	exec fx.scriptData 'fx', 'Countries', @ExcludedColumns = "'CountryCode','Alfa2','Alfa3'"

	-- Example 11:	To avoid checking the foreign key constraints while loading data with INSERT statements:
	exec fx.scriptData 'fx', 'Countries', @DisableConstraints = 1

	-- Example 12: 	To exclude computed columns from the INSERT statement:
	exec fx.scriptData 'fx', 'Countries', @OmitComputed = 1
</example>

<author>
	Based on code of
	Narayana Vyas Kondreddi 
	http://vyaskn.tripod.com
	vyaskn@hotmail.com

	Acknowledgements:
		Divya Kalra	 For beta testing
		Mark Charsley	 For reporting a problem with scripting uniqueidentifier columns with null values
		Artur Zeygman	 For helping me simplify a bit of code for handling non-dbo owned tables
		Joris Laperre    For reporting a regression bug in handling text/ntext columns

	Copyright (c) 2002 Narayana Vyas Kondreddi. All rights reserved.
</author>
</documentation>
*/

create procedure fx.scriptData
(
	@Schema             sysname       = N'fx',		
	@Object             sysname       = N'Countries',  		    
	@TargetObject       sysname       = null, 	
	@ScriptColumnsList  bit           = 1,		    
	@Conditions         nvarchar(max) = null, 		    
	@IncludeTimestamp   bit           = 0, 		    
	@OmitIdentity       bit           = 0,		
	@Top                int           = null,			
	@IncludedColumns    nvarchar(max) = null,	
	@ExcludedColumns    nvarchar(max) = null,	
	@DisableConstraints bit           = 0,		
	@OmitComputed       bit           = 0,
	@PrintResult        bit           = 1,
	@Result             nvarchar(max) = null output	
)
as
begin

	set nocount on

	declare	@ColumnID     int, 		
			@ColumnsList  nvarchar(max), 
			@ColumnName   sysname, 
			@StartInsert  nvarchar(max), 
			@Type         sysname, 
			@Records      nvarchar(max),	--This is the string that will be finally executed to generate INSERT statements
			@Identity     sysname,		    --Will contain the IDENTITY column's name in the table
			@Chunk        int

	set @Identity     = space(0)
	set @ColumnID     = 0
	set @ColumnName   = space(0)
	set @ColumnsList  = space(0)
	set @Records      = space(0)
	set @Result       = space(0)
	set @Chunk        = 100

	--Making sure user only uses either @IncludedColumns or @ExcludedColumns
	if ((@IncludedColumns is not null) and (@ExcludedColumns is not null))
		begin
			raiserror('Use either @IncludedColumns or @ExcludedColumns. Do not use both the parameters at once', 16, 1)
			return -1 --Failure. Reason: Both @IncludedColumns and @ExcludedColumns parameters are specified
		end

	--Making sure the @IncludedColumns and @ExcludedColumns parameters are receiving values in proper format
	if ((@IncludedColumns is not null) and (patindex('''%''',@IncludedColumns) = 0))
		begin
			raiserror('Invalid use of @IncludedColumns property', 16, 1)
			print 'Specify column names surrounded by single quotes and separated by commas'
			print 'Eg: exec fx.scriptData titles, @IncludedColumns = "''title_id'',''title''"'
			return -1 --Failure. Reason: Invalid use of @IncludedColumns property
		end

	if ((@ExcludedColumns is not null) and (patindex('''%''',@ExcludedColumns) = 0))
		begin
			raiserror('Invalid use of @ExcludedColumns property', 16, 1)
			print 'Specify column names surrounded by single quotes and separated by commas'
			print 'Eg: exec fx.scriptData titles, @ExcludedColumns = "''title_id'',''title''"'
			return -1 --Failure. Reason: Invalid use of @ExcludedColumns property
		end

	--Checking to see if the database name is specified along wih the table name
	--Your database context should be local to the table for which you want to generate INSERT statements
	--specifying the database name is not allowed
	if (parsename(@Object, 3)) is not null
		begin
			raiserror('Do not specify the database name. Be in the required database and just specify the table name.', 16, 1)
			return -1 --Failure. Reason: Database name is specified along with the table name, which is not allowed
		end

	--Checking for the existence of 'user table' or 'view'
	--This procedure is not written to work on system tables
	--To script the data in system tables, just create a view on the system tables and script the view instead
	if @Schema is null
		begin
			if ((object_id(@Object,'U') is null) and (object_id(@Object, 'V') is null)) 
				begin
					raiserror('Specified table is not found.', 16, 1)
					print 'Make sure you have select permission on that table.'
					return -1 --Failure. Reason: There is no user table or view with this name
				end
		end
	else
		begin
			if not exists (
				select * from sys.tables t
				inner join sys.schemas s on s.schema_id = t.schema_id
				where t.name = @Object and s.name = @Schema
			)
				begin
					raiserror('Specified table is not found.', 16, 1)
					print 'Make sure you have select permission on that table or view.'
					return -1 --Failure. Reason: There is no user table or view with this name		
				end
		end

	set @StartInsert = N'insert into ' + '[' + ltrim(rtrim(@Schema)) + N'].' + N'[' + rtrim(coalesce(@TargetObject, @Object)) + N']' 		

	--Get the first column's ID
	select @ColumnID = min(c.column_id)
	from sys.columns c
	inner join sys.tables t on t.object_id = c.object_id
	inner join sys.schemas s on s.schema_id = t.schema_id
	where t.name = @Object and s.name = @Schema

	--Loop through all the columns of the table, to get the column names and their data types
	while @ColumnID is not null
	begin

		select @ColumnName = quotename(c.name), @Type = tp.name
		from sys.columns c
		inner join sys.types tp on tp.system_type_id = c.system_type_id
		inner join sys.tables t on t.object_id = c.object_id
		inner join sys.schemas s on s.schema_id = t.schema_id
		where t.name = @Object and s.name = @Schema and c.column_id = @ColumnID and tp.name != 'sysname'
	
		if @Type  not in (
			'char', 'varchar', 'nchar', 'nvarchar', 'tinyint', 'smallint', 'int', 'bigint', 'decimal', 'float', 
			'real', 'datetime',  'smalldatetime', 'date', 'time', 'sysname', 'uniqueidentifier', 'timestamp', 
			'rowversion', 'money', 'smallmoney', 'text', 'ntext', 'varbinary', 'bit')
			
		begin
			raiserror('Unsupported data type', 16, 1)
			print 'Column ' + @ColumnName + N' has unsupported type [' + @Type + N'] and will be skipped'
			goto SKIP_LOOP
		end
			
		if @IncludedColumns is not null --Selecting only user specified columns
			and charindex( '''' + substring(@ColumnName, 2, len(@ColumnName)-2) + '''', @IncludedColumns) = 0 
				goto SKIP_LOOP

		if @ExcludedColumns is not null --Selecting only user specified columns
			and charindex( '''' + substring(@ColumnName, 2, len(@ColumnName) - 2) + '''', @ExcludedColumns) <> 0 
				goto SKIP_LOOP

		--Making sure to output set identity_insert ON/OFF in case the table has an IDENTITY column
		if (select columnproperty( object_id(quotename(coalesce(@Schema, user_name())) + '.' + @Object), 
			substring(@ColumnName,2, len(@ColumnName) - 2), 'IsIdentity')) = 1 

			if @OmitIdentity = 0 --Determing whether to include or exclude the IDENTITY column
				set @Identity = @ColumnName
			else goto SKIP_LOOP			
		
		--Making sure whether to output computed columns or not
		if @OmitComputed = 1
			and (select columnproperty( object_id(quotename(coalesce(@Schema, user_name())) + '.' + @Object), 
				substring(@ColumnName,2, len(@ColumnName) - 2), 'IsComputed')) = 1 
				goto SKIP_LOOP					

		--Determining the data type of the column and depending on the data type, the values part of
		--the INSERT statement is generated. Care is taken to handle columns with null values. Also
		--making sure, not to lose any data from flot, real, money, smallmomey, datetime columns
		set @Records = @Records + case 
			when @Type in ('char', 'nchar', 'sysname', 'varchar', 'nvarchar') then
				N'isnull(fx.scriptString(' + @ColumnName + ', ' + rtrim(str(@Chunk)) + '), ''null'')'
			when @Type in ('text', 'ntext', 'uniqueidentifier', 'datetime', 'smalldatetime', 'date', 'time') 
				then N'isnull(fx.scriptString(convert(nvarchar(max), ' + @ColumnName + '), ' + rtrim(str(@Chunk)) + '), ''null'')'
			when @Type in ('binary', 'varbinary') then  
				N'''Ox'' + isnull(fx.getBinaryAsString(' + @ColumnName +'), space(0))'
			when @Type in ('timestamp', 'rowversion') then  
					case when @IncludeTimestamp = 0 then N'''default''' 
						else N'isnull(fx.scriptString(convert(nvarchar(max), ' + @ColumnName + '), ' + rtrim(str(@Chunk)) + '), ''null'')'
					end
			else N'isnull(convert(nvarchar(max), ' + @ColumnName + '), ''null'')'
		end   + N'+' +  N''', ''' + N' + '
		

		--Generating the column list for the INSERT statement
		set @ColumnsList = @ColumnsList +  @ColumnName + ','	

		SKIP_LOOP: --The label used in goto

		select @ColumnID = min(c.column_id)
		from sys.columns c
		inner join sys.tables t on t.object_id = c.object_id
		inner join sys.schemas s on s.schema_id = t.schema_id
		where t.name = @Object and s.name = @Schema and c.column_id > @ColumnID

	--Loop ends here!
	end

	--To get rid of the extra characters that got concatenated during the last run through the loop
	set @ColumnsList  = left(@ColumnsList, len(@ColumnsList) - 1)
	set @Records = left(@Records, len(@Records) - 6)

	if ltrim(@ColumnsList) = space(0) 
		begin
			raiserror('No columns specified. There should at least be one column to generate the output', 16, 1)
			return -1 --Failure. Reason: Looks like all the columns are ommitted using the @ExcludedColumns parameter
		end

	--Forming the final string that will be executed, to output the INSERT statements

	set @Records = 
		N'select @Value = (select nchar(9) + [Value] + nchar(13) as ''data()'' from (select ' +  
		case when @Top is null OR @Top < 0 then N'' else N' top ' + ltrim(str(@Top)) + space(1) end + 
		N' [Value] = ''' + rtrim(@StartInsert) + '''+' + 
		case @ScriptColumnsList when 1 then N'''(' + rtrim(@ColumnsList) +  N'''+' + N''')''' else space(0) end+ 
		N' +'' values(''+ ' +  @Records  + N'+'')''' + N' ' + 
		coalesce(@Conditions, N' from [' + ltrim(rtrim(@Schema)) + N'].[' + rtrim(@Object) + N'] (nolock)') +
		N') as a for xml path(''''))'
		
	/* In result of this complicated code there should be generated string like the following:
	
	select @Value = (
		select char(9) + [Value] + nchar(13) as 'data()' 
		from (
			select  [Value] = 
				'insert into [fx].[Countries]'+'(
					[CountryID],
					[CountryCode],
					[ShortNameRus],
					[FullNameRus],
					[ShortNameEng],
					[Alfa2],
					[Alfa3]'+')' +
				' values('+ 
					coalesce(ltrim(rtrim(convert(char, [CountryID]))),'null')+',' + 
					coalesce('''' + replace(rtrim([CountryCode]),'''','''''')+'''','null')+',' + 
					coalesce('N''' + replace(rtrim([ShortNameRus]),'''','''''')+'''','null')+',' + 
					coalesce('N''' + replace(rtrim([FullNameRus]),'''','''''')+'''','null')+',' + 
					coalesce('N''' + replace(rtrim([ShortNameEng]),'''','''''')+'''','null')+',' + 
					coalesce('''' + replace(rtrim([Alfa2]),'''','''''')+'''','null')+',' + 
					coalesce('''' + replace(rtrim([Alfa3]),'''','''''')+'''','null')+
				')'  
			from [fx].[Countries] (nolock) ) as a for xml path('')
		)
	*/

	set @Result = @Result +  N'set nocount on' + nchar(13)

	--Determining whether to print identity_insert or not
	if (@Identity <> space(0))
			set @Result = @Result +  
				N'set identity_insert ' + quotename(coalesce(@Schema,user_name())) + N'.' + quotename(@Object) + N' on'  + nchar(13)

	if @DisableConstraints = 1 and (object_id(quotename(coalesce(@Schema,user_name())) + '.' + @Object, 'U') is not null)
	begin
		set @Result = @Result +  N'alter table ' + quotename(@Schema) + N'.' + quotename(coalesce(@TargetObject, @Object)) + N' nocheck constraint all'  + nchar(13)
		set @Result = @Result +  N'go'  + nchar(13)
	end


	--All the hard work pays off here!!! You'll get your INSERT statements, when the next line executes!
	declare @Parameters nvarchar(50)
	set @Parameters = N'@Value nvarchar(max) output'
	exec sp_executesql @Records, @Parameters, @Records output
	set @Records = replace(@Records, N'&#x0D;', nchar(13))
	set @Result = @Result + @Records
	
	if @DisableConstraints = 1 and (object_id(quotename(coalesce(@Schema,user_name())) + '.' + @Object, 'U') is not null)
	begin
		set @Result = @Result + N'alter table ' + quotename(@Schema) + N'.' + quotename(coalesce(@TargetObject, @Object)) + N' check constraints all ' + nchar(13)
		set @Result = @Result + N'go' + nchar(13)
	end

	if (@Identity <> space(0))
		set @Result = @Result + N'set identity_insert ' + quotename(coalesce(@Schema,user_name())) + N'.' + quotename(@Object) + N' off' + nchar(13)

	set @Result = @Result + N'set nocount off' + nchar(13)
	set @Result = @Result + N'go' + nchar(13)
	
	if @PrintResult = 1 exec fx.printString @Result
	
	return 0 
end

go
if exists (select * from sysobjects where id = object_id(N'fx.scriptDiagram') and xtype in (N'P'))
	drop procedure fx.scriptDiagram
	
set quoted_identifier on
go
/*
<documentation>
<summary>
	Script SQL Server diagrams 
</summary>

<remarks>
	Helpful Articles
	
	1) Upload / Download to Sql 2005
	http://staceyw.spaces.live.com/blog/cns!F4A38E96E598161E!404.entry
	
	2) MSDN: Using Large-Value Data Types
	http://msdn2.microsoft.com/en-us/library/ms178158.aspx
	
	3) original Script, Save, Export SQL 2000 Database Diagrams
	http://www.thescripts.com/forum/thread81534.html
	
</remarks>

<parameters>
<param name="Schema">Object's schema name</param>
<param name="Object">Name of the diagram</param>
<param name="PrintResult">Flag to determine should resulted script be printed to output</param>
<param name="Result">SQL statement</param>
</parameters>

<example>
	-- NOTE: Scalar-valued Function fx.getBinaryAsString must exist before this script is run
	exec fx.scriptDiagram 'dbo', 'General'
</example>

<author>
	Based on code of
	Craig Dunn
	inspired by usp_ScriptDatabaseDiagrams for Sql Server 2000 by Clay Beatty
</author>
</documentation>
*/

create procedure fx.scriptDiagram
(
	@Schema  sysname = N'dbo',
	@Object  sysname = N'fx',
	@PrintResult bit = 1,
	@Result nvarchar(max) = null output
)
as
begin

	set nocount on

	declare
		@DiagramID		int,
		@Index			int,
		@Size			int,
		@Chunk			int,
		@TextToPrint nvarchar(max)

	set @Result = space(0)
	-- set start Index, and Chunk 'constant' value
	set @Index = 1  -- 
	set @Chunk = 32	-- values that work: 2, 6
					-- values that fail: 15,16, 64

	-- Get PK DiagramID using the diagram's Name (which is what the user is familiar with)
	select 
		@DiagramID = diagram_id,	
		@Size = datalength([definition]) 
	from sysdiagrams 
	where [Name] = @Object

	if @DiagramID is null
	begin
		raiserror('Specified diagram is not found.', 16, 1)
		return -1
	end
	else -- Diagram exists
	begin
		-- Now with the DiagramID, do all the work
		set @Result = @Result + N'set nocount on' + nchar(13)
		set @Result = @Result + N'set quoted_identifier on' + nchar(13) + nchar(13)
		set @Result = @Result + N'/*' + nchar(13)
		set @Result = @Result + N'<documentation>' + nchar(13)
		set @Result = @Result + N'<summary>'   + nchar(13) + nchar(9) + N'Creating diagram ''' + @Object + '''' + nchar(13) + N'</summary>' + nchar(13)
		set @Result = @Result + N'<remarks>'   + nchar(13) + nchar(9) + N'Will attempt to create [sysdiagrams] table if it doesn''t already exist' + nchar(13) + N'</remarks>' + nchar(13)
		set @Result = @Result + N'<generated>' + nchar(13) + nchar(9) + left(convert(varchar(23), getDate(), 121), 16) + nchar(13) + '</generated>' + nchar(13)
		set @Result = @Result + N'</documentation>' + nchar(13)
		set @Result = @Result + N'*/' + nchar(13) + nchar(13)
		set @Result = @Result + N'if not exists (select * from sys.tables where name = ''sysdiagrams'')' + nchar(13)
		set @Result = @Result + N'begin' + nchar(13)
		set @Result = @Result + N'	-- creates the first time you add a diagram to a 2005/2008 database' + nchar(13)
		set @Result = @Result + N'		create table[dbo].[sysdiagrams](' + nchar(13)
		set @Result = @Result + N'			[Name] [sysName] not null,' + nchar(13)
		set @Result = @Result + N'			[principal_id] [int] not null,' + nchar(13)
		set @Result = @Result + N'			[diagram_id] [int] identity(1,1) not null,' + nchar(13)
		set @Result = @Result + N'			[version] [int] null,' + nchar(13)
		set @Result = @Result + N'			[definition] [varbinary](max) null,' + nchar(13)
		set @Result = @Result + N'			primary key clustered([diagram_id] asc)with (pad_Index  = off, ignore_dup_key = off)  ,' + nchar(13)
		set @Result = @Result + N'			constraint [UK_principal_Name] unique nonclustered ([principal_id] asc, [Name] asc)' + nchar(13)
		set @Result = @Result + N'		) ' + nchar(13)
		set @Result = @Result + N'		exec sys.sp_addextendedproperty @name = N''microsoft_database_tools_support'', @value = 1 , @level0type = N''SCHEMA'',@level0Name = N''dbo'', @level1type = N''TABLE'',@level1Name = N''sysdiagrams''' + nchar(13)
		set @Result = @Result + N'end' + nchar(13)
		set @Result = @Result + N'-- Target table will now exist, if it didn''t before' + nchar(13)
		set @Result = @Result + N'set nocount on' + nchar(13)
		set @Result = @Result + N'declare @newid int' + nchar(13)
		set @Result = @Result + nchar(13) + N'/*' + nchar(13)
		set @Result = @Result + N'Output the insert that _creates_ the diagram record, with a non-null [definition],' + nchar(13)
		set @Result = @Result + N'important because .WRITE *cannot* be called against a null value (in the WHILE loop)' + nchar(13)
		set @Result = @Result + N'so we insert 0x so that .WRITE has something to append to...' + nchar(13)
		set @Result = @Result + N'*/' + nchar(13)
		set @Result = @Result + nchar(13)
		set @Result = @Result + N'begin try' + nchar(13)

		select top 1 @Result = @Result + N'insert into sysdiagrams ([Name], [principal_id], [version], [definition]) values (''' + 
			[Name] + N''', ' + cast (principal_id as nvarchar(100)) + N', ' + cast([version] as nvarchar(100)) + ', 0x)' + char(13) + char(10)
		from sysdiagrams where diagram_id = @DiagramID

		set @Result = @Result + N'		set @newid = scope_identity()' + nchar(13)
		set @Result = @Result + N'end try' + nchar(13)
		set @Result = @Result + N'begin catch' + nchar(13)
		set @Result = @Result + N'	print N''Error occured: ''  + error_Message()' + nchar(13)
		set @Result = @Result + N'	return' + nchar(13)
		set @Result = @Result + N'end catch' + nchar(13)
		set @Result = @Result + N'begin try' + nchar(13)

		while @Index < @Size
		begin
			-- Output as many UPDATE statements as required to append all the diagram binary
			-- data, represented as hexadecimal strings
			select @Result = @Result + 
				 N'	update sysdiagrams set [definition] .Write ('
				+ N' 0x' + upper(fx.getBinaryAsString (substring ([definition], @Index, @Chunk)))
				+ N', null, 0) where diagram_id = @newid -- Index:' + cast(@Index as nvarchar(100))
				+ nchar(13)
			from	sysdiagrams 
			where	diagram_id = @DiagramID

			set @Index = @Index + @Chunk
		end
		set @Result = @Result + N'end try' + nchar(13)
		set @Result = @Result + N'begin catch' + nchar(13)
		set @Result = @Result + N'	-- if we got here, the [definition] updates didn''t complete, so delete the diagram row' + nchar(13)
		set @Result = @Result + N'	-- (and hope it doesn''t fail!)' + nchar(13)
		set @Result = @Result + N'	delete from sysdiagrams where diagram_id = @newid' + nchar(13)
		set @Result = @Result + N'	print N''Error occured: '' + Error_Message() + '' ''' + nchar(13)
		set @Result = @Result + N'	return' + nchar(13)
		set @Result = @Result + N'end catch' + nchar(13)
		set @Result = @Result + nchar(13)
		set @Result = @Result + N'go' + nchar(13)
		set @Result = @Result + nchar(13)
	end

	if @PrintResult = 1 exec fx.printString @Result
	
	return 0
end

go
if exists (select * from sysobjects where id = object_id(N'fx.scriptEncryptedObject') and xtype in (N'P'))
	drop procedure fx.scriptEncryptedObject

set quoted_identifier on
go
/*
<documentation>

<summary>
	Decrypts SQL Server stored procedures, functions, views, and triggers
</summary>

<remarks>
	HEADS UP: In order to run this script you must log in
	to the server in DAC mode: To do so, type
	ADMIN: SQLInstanceName as your server name and use the "sa"
	or any other server admin user with the appropriate password.
	
	Remote DAC should be enabled with
	
	sp_configure 'remote admin connections', 1
	reconfigure
                       
	CAUTION! DAC (dedicated admin access) will kick out all other
	server users.
                        
	The script below accepts an object (schema name + object name)
	that were created using the WITH ENCRYPTION option and returns
	the decrypted script that creates the object. This script
	is useful to decrypt stored procedures, views, functions,
	and triggers that were created WITH ENCRYPTION.
                        
	The algorithm used below is the following:
	1. Check that the object exists and that it is encrypted.

	2. In order to decrypt the object, the script ALTER (!!!) it
	and later restores the object to its original one. This is
	required as part of the decryption process: The object
	is altered to contain dummy text (the ALTER uses WITH ENCRYPTION)
	and then compared to the CREATE statement of the same dummy
	content. 
                        
	Note: The object is altered in a transaction, which is rolled
	back immediately after the object is changed to restore
	all previous settings.
                        
	3. A XOR operation between the original binary stream of the
	enrypted object with the binary representation of the dummy
	object and the binary version of the object in clear-text
	is used to decrypt the original object.
</remarks>					 

<parameters>
<param name="Schema">Object's schema name</param>
<param name="Object">Encrypted object name</param>
<param name="PrintResult">Flag to determine should resulted script be printed to output</param>
<param name="Result">DDL statement</param>
</parameters>

<example>
	exec fx.scriptEncryptedObject N'fx', N'encryptedExample'
</example>

<author>
	Based on code of
	Omri Bahat

	Copyright (c) SQL Farms Solutions, http://www.sqlfarms.com. All rights reserved.
	This code can be used only for non-redistributable purposes.
	The code can be used for free as long as this copyright notice is not removed.
</author>

<date>01/01/2007</date>
</documentation>
*/

create procedure fx.scriptEncryptedObject 
( 
	@Schema sysname = N'fx', 
	@Object sysname = N'encryptedExample',
	@PrintResult bit = 1,
	@Result nvarchar(max) = null output
) as
begin

	set nocount on

	declare 
		@i                            int,
		@ObjectDataLength             int,
		@ContentOfDecryptedObject     nvarchar(max),
		@ContentOfFakeObject          nvarchar(max),
		@ContentOfFakeEncryptedObject nvarchar(max),
		@TextToPrint                  nvarchar(max),
		@ObjectType                   nvarchar(128),
		@ObjectID                     int

	set @ObjectID = object_id('[' + @Schema + '].[' + @Object + ']')

	-- Check that the provided object exists in the database.
	if @ObjectID is null
	begin
		raiserror('Specified object or schema does not exist in the database', 16, 1)
		return -1
	end

	-- Check that the provided object is encrypted.
	if not exists(select top 1 * from syscomments where id = @ObjectID and encrypted = 1)
	begin
		raiserror('Specified object exists however it is not encrypted.', 16, 1)
		return -1
	end

	-- Determine the type of the object
	if object_id('[' + @Schema + '].[' + @Object + ']', 'PROCEDURE') is not null
		set @ObjectType = 'procedure'
	else
		if object_id('[' + @Schema + '].[' + @Object + ']', 'TRIGGER') is not null
			set @ObjectType = 'trigger'
		else
			if object_id('[' + @Schema + '].[' + @Object + ']', 'VIEW') is not null
				set @ObjectType = 'view'
			else
				set @ObjectType = 'function'

	
	-- Get the binary representation of the object- syscomments no longer holds
	-- the content of encrypted object.
	
	select top 1 @Result = imageval
	from sys.sysobjvalues
	where objid = object_id('[' + @Schema + '].[' + @Object + ']')
			and valclass = 1 --and subobjid = 1


	set @Objectdatalength = datalength(@Result)/2


	/*
	 We need to alter the existing object and make it into a dummy object
	 in order to decrypt its content. This is done in a transaction
	 (which is later rolled back) to ensure that all changes have a minimal
	 impact on the database.
	*/

	set @ContentOfFakeObject = N'alter ' + @ObjectType + N' [' + @Schema + N'].[' + @Object + N'] with encryption as'

	while datalength(@ContentOfFakeObject)/2 < @Objectdatalength
		if datalength(@ContentOfFakeObject)/2 + 4000 < @Objectdatalength
			set @ContentOfFakeObject = @ContentOfFakeObject + replicate(N'-', 4000)
		else
			set @ContentOfFakeObject = @ContentOfFakeObject + replicate(N'-', @Objectdatalength - (datalength(@ContentOfFakeObject)/2))

	-- Since we need to alter the object in order to decrypt it, this is done in a transaction
	set xact_abort off
	begin tran

	exec(@ContentOfFakeObject + '
		select 1 as A')

	if @@error <> 0 rollback tran

	-- Get the encrypted content of the new "fake" object.
	select top 1 @ContentOfFakeEncryptedObject = imageval
	from sys.sysobjvalues
	where objid = object_id('[' + @Schema + '].[' + @Object + ']')
		and valclass = 1 and subobjid = 1

	if @@trancount > 0 rollback tran

	-- Generate a CREATE script for the dummy object text.
	set @ContentOfFakeObject = N'create ' + @ObjectType + N' [' + @Schema + N'].[' + @Object + N'] with encryption as'

	while datalength(@ContentOfFakeObject)/2 < @Objectdatalength
		if datalength(@ContentOfFakeObject)/2 + 4000 < @Objectdatalength
			set @ContentOfFakeObject = @ContentOfFakeObject + replicate(N'-', 4000)
		else
			set @ContentOfFakeObject = @ContentOfFakeObject + replicate(N'-', @Objectdatalength - (datalength(@ContentOfFakeObject)/2))

	set @i = 1

	--Fill the variable that holds the decrypted data with a filler character
	set @ContentOfDecryptedObject = space(0)

	while datalength(@ContentOfDecryptedObject)/2 < @Objectdatalength
		if datalength(@ContentOfDecryptedObject)/2 + 4000 < @Objectdatalength
			set @ContentOfDecryptedObject = @ContentOfDecryptedObject + replicate(N'A', 4000)
		else
			set @ContentOfDecryptedObject = @ContentOfDecryptedObject + replicate(N'A', @Objectdatalength - (datalength(@ContentOfDecryptedObject)/2))

	while @i <= @Objectdatalength
	begin
		print @ContentOfDecryptedObject
		--xor real & fake & fake encrypted
		set @ContentOfDecryptedObject = stuff(@ContentOfDecryptedObject, @i, 1,
			nchar(
				unicode(substring(@Result, @i, 1)) ^
				(
					unicode(substring(@ContentOfFakeObject, @i, 1)) ^
					unicode(substring(@ContentOfFakeEncryptedObject, @i, 1))
				)))

		set @i = @i + 1
	end

	set @Result = replace(@ContentOfDecryptedObject, N'-*CREAte', N'create')
	if @PrintResult = 1 exec fx.printString @Result
	
	return 0

end

go

--alter view [dbo].[test] with encryption as select * from sys.tables
-- select * from test

if exists (select * from sysobjects where id = object_id(N'fx.encryptedExample') and xtype in (N'P'))
drop procedure fx.encryptedExample
go

create procedure fx.encryptedExample with encryption as
begin
	print N'This is a message from decrypted object'
	
end
go
if exists (select * from sysobjects where id = object_id(N'fx.scriptObject') and xtype in (N'P'))
drop procedure fx.scriptObject
go
/*
<documentation>
<summary>
	Generates DDL definition for given object 
</summary>

<remarks>
	This alternative of sp_helptext. Generates full DDL definition for given objects. 
	Supported object types are
	- user view
	- stored procedure
	- function
	- trigger
	
	NOTE: the procedure DOES NOT support all possible DDL syntax constructions. 
	Look for restriction for scripting tables at fx.ScriptTable
</remarks>

<parameters>
<param name="Schema">Scripted object's schema</param>
<param name="Object">Scripted object's name</param>
<param name="PrintResult">Flag to determine should resulted script be printed to output</param>
<param name="Result">DDL statement</param>
</parameters>

<example>
	exec fx.scriptObject 'fx', 'scriptData'
</example>

<author>
	Alex Zakharov
	Copyright (c) AnjLab 2009, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>
</documentation>
*/

create procedure fx.scriptObject(
	@Schema sysname = 'fx', 
	@Object sysname = 'scriptObject',
	@PrintResult bit = 1,
	@Result nvarchar(max) = null output
) as
begin

	declare 
		@ObjectID int, 
		@ObjectText nvarchar(max), 
		@ObjectType sysname, 
		@Encrypted bit,
		@TextRow nvarchar(4000)


	set @ObjectText = space(0)
	set @Result = space(0)

	select top 1 @ObjectID = o.object_id, @ObjectType = o.type  
	from sys.objects o
	inner join sys.schemas s on s.schema_id = o.schema_id
	where  o.name = @Object and s.name = @Schema

	if @ObjectID is null
	begin
		raiserror('Specified object is not found.', 16, 1)
		return -1
	end

	if @ObjectType not in ('P', 'V', 'FN', 'TF', 'TR')
	begin
		raiserror('Specified object has unsupported type. ', 16, 1)	
		print 'Supported types are view, stored procedure, function, trigger.'
		return -1
	end

	declare Data cursor for 
		select [text], encrypted
		from syscomments where id = @ObjectID
		order by colid

	open Data
	fetch next from Data into @TextRow, @Encrypted
	
	while @@fetch_status = 0
	begin
		set @ObjectText = @ObjectText + replace(@TextRow, nchar(10), space(0))
		fetch next from Data into @TextRow, @Encrypted
	end
	
	close Data
	deallocate Data

	if @ObjectText is null and @Encrypted is null
	begin
		raiserror('Definition of specified object is not found.', 16, 1)	
		return -1
	end

	if @Encrypted = 1
	begin
		raiserror('Definition of specified object is encrypted.', 16, 1)	
		print 'NOTE. You can use fx.scriptEncryptedObject to get definition of encrypted object'
		return -1
	end

	set @Result = @Result + N'if exists(' + nchar(13)
	set @Result = @Result + N'	select * ' + nchar(13)
	set @Result = @Result + N'	from sys.objects o' + nchar(13)
	set @Result = @Result + N'	inner join sys.schemas s on s.schema_id = o.schema_id' + nchar(13)
	set @Result = @Result + N'	where o.name = ''' + @Object + N''' and s.name = ''' + @Schema + N''' and o.type = ''' + @ObjectType + N''')' + nchar(13)
	set @Result = @Result + N'drop ' + 
		case @ObjectType 
			when 'P' then N'procedure'
			when 'V' then N'view'
			when 'FN' then N'f5unction'
			when 'TF' then N'function'
			when 'TR' then N'trigger'
		end +
		N' [' + @Schema + N'].[' + @Object + N']' + nchar(13)
	set @Result = @Result + N'go' + nchar(13) + nchar(13)
	set @Result = @Result + @ObjectText + nchar(13)
	set @Result = @Result + N'go'+ nchar(13)

	if @PrintResult = 1 exec fx.printString @Result
		
	return 0
	
end

go
if exists (select * from sysobjects where id = object_id(N'fx.scriptTable') and xtype in (N'P'))
	drop procedure fx.scriptTable
	
set quoted_identifier on
go
/*
<documentation>

<summary>
	Generating DDL definistion for given table 
</summary>

<remarks>
	Generates full DDL definition for given table and related objects, including the following
	- checking existence before creating the table
	- columns definition including collation, nullable, identity and computing options
	- constraints definition including primary, foreign keys, check and default constraints
	- indexes definition
	
	NOTE: the procedure DOES NOT support all possible DDL syntax constructions. List of known
	unsuported constructions is given below:
	- properties ralated to physical structure (files, filegroups, partitions, size)
	- including option for indexes
	- fulltext indexes
	- extended properties
</remarks>

<parameters>
<param name="Schema">Scripted object's schema</param>
<param name="Table">Scripted table</param>
<param name="ScriptCollation">Flag to determine should be column collation be scripted</param>
<param name="PrintResult">Flag to determine should resulted script be printed to output</param>
<param name="Result">DDL statement</param>
</parameters>

<example>
	exec fx.scriptTable 'fx', 'Countries'
</example>

<author>
	Alex Zakharov
	Copyright © AnjLab 2009, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>

</documentation>
*/

create procedure fx.scriptTable(
	@Schema sysname = 'fx', 
	@Table sysname = 'Countries',
	@ScriptCollation bit = 0,	
	@PrintResult bit = 1,
	@Result nvarchar(max) = null output
) as
begin

	declare
		@Column nvarchar(255),
		@Type nvarchar(255),
		@Lenght nvarchar(255),
		@Nullable nvarchar(255),
		@Identity nvarchar(255),
		@TextToPrint nvarchar(max),
		@ID int

	set @Result = space(0)

	select top 1 @ID = t.object_id 
	from sys.tables t inner join sys.schemas s on s.schema_id = t.schema_id
	where s.name = @Schema and t.name = @Table

	if @ID is null
	begin
		raiserror('Specified table is not found.', 16, 1)
		return -1
	end	

	set @Result = @Result + N'if not exists(' + nchar(13)
	set @Result = @Result + N'	select * ' + nchar(13)
	set @Result = @Result + N'	from sys.tables t ' + nchar(13)
	set @Result = @Result + N'	inner join sys.schemas s on s.schema_id = t.schema_id' + nchar(13)
	set @Result = @Result + N'	where s.name = ''' + @Schema + N''' and t.name = ''' + @Table + N''')' + nchar(13)
	set @Result = @Result + N'begin' + nchar(13) + nchar(13)
	set @Result = @Result + N'	create table [' + @Schema + N'].[' + @Table + N']('

	-- columns definitions
	select @Result = @Result + replace(cast((
		select nchar(13) + '		' + [Column] + ',' as 'data()'
		from (
			select [Column] = 
			-- column name
				'[' + c.name + '] ' + 
			-- data type (or definition for computed column)
				case
					when cc.name is not null then N'as ' + cc.[definition]
					when cc.name is null and t.name in ('char', 'varchar', 'nchar', 'nvarchar') and c.max_length = -1 then t.name + N'(max)'
					when cc.name is null and t.name in ('char', 'varchar', 'nchar', 'nvarchar') and c.max_length > -1 then t.name +N'(' + ltrim(str(c.max_length)) + N')'
					when cc.name is null and t.name in ('decimal') then t.name + '(' + ltrim(str(c.max_length)) + N', ' + ltrim(str(c.[precision])) + N')'
					else t.name
					end +
			-- collation
				case when c.collation_name is not null and @ScriptCollation = 1 
					then N' collate ' + c.collation_name 
					else space(0)
					end +
			-- nullable
				case c.is_nullable when 0 then ' not null' else space(0) end +
			-- identity
				case when i.[Name] is not null 
					then N' identity(' + ltrim(cast(i.seed_value as nvarchar(10))) + N', ' + ltrim(cast(i.increment_value as nvarchar(10))) + N')'
					else space(0)
					end +
			-- default
				case when d.object_id is not null 
					then N' constraint [' + d.name + N'] default ' + d.[definition]
					else space(0)
					end 
			from sys.columns c
			inner join sys.types t on t.system_type_id = c.system_type_id
			left join sys.identity_columns i on i.column_id = c.column_id and i.object_id = @ID
			left join sys.default_constraints d on d.object_id = c.default_object_id
			left join sys.computed_columns cc on cc.object_id = c.object_id and cc.column_id = c.column_id
			where c.object_id = @ID and t.name != 'sysname'
			--order by c.column_id
		) as a for xml path('')) as nvarchar(max)), N'&#x0D;', nchar(13))

	-- primary keys definitions		
	select @Result = @Result + isnull(nchar(13) + N'		constraint [' + [Name] + 
		N'] ' + [Type] + [Clustered] + N' (' + substring([Columns], 1, len([Columns]) - 1) + N'),', space(0))
	from (
		select 
			[Name] = k.name, 
			[Type] = case k.type when 'PK' then N'primary key ' else N'unique ' end,
			[Clustered] = case when i.[type] = 1 then N'clustered' else N'nonclustered' end,
			[Columns] = (
				select [Name] + N',' as N'data()' from (
					select [Name] = N'[' + c.name + N']'  + case ic.is_descending_key when 0 then N' asc' else N' desc' end
					from sys.index_columns ic 
					inner join sys.columns c on c.object_id = ic.object_id and c.column_id = ic.column_id
					where ic.object_id = @ID and ic.index_id = i.index_id
					) as a for xml path('')
				)
		from sys.key_constraints k
		inner join sys.indexes i on i.object_id = k.parent_object_id and k.unique_index_id = i.index_id
		where k.parent_object_id = @ID 
			
		) as a

	-- foreign keys definitions
	select @Result = @Result + replace(isnull((
		select nchar(13) + N'		' + [Column] + N',' as N'data()'
		from (
			select [Column] = 
				N'constraint [' +  fk.name + 
				N'] foreign key([' + c.name + N']) references [' + rs.name + N'].[' + rt.name + N']([' + rc.name + N'])' +
				case fk.delete_referential_action 
					when 1 then N' on delete cascade'
					when 2 then N' on delete set null'
					when 3 then N' on delete set default'
					else space(0)
				end +
				case fk.update_referential_action 
					when 1 then N' on update cascade'
					when 2 then N' on update set null'
					when 3 then N' on update set default'
					else space(0)
				end +
				case when fk.is_not_for_replication = 1 then N' for replication' else space(0) end
			from sys.foreign_keys fk
			inner join sys.foreign_key_columns fkc on fkc.constraint_object_id = fk.object_id
			inner join sys.columns c on c.object_id = fkc.parent_object_id and c.column_id = fkc.parent_column_id
			inner join sys.tables rt on rt.object_id = fkc.referenced_object_id
			inner join sys.schemas rs on rs.schema_id = rt.schema_id
			inner join sys.columns rc on rc.object_id = fkc.referenced_object_id and rc.column_id = fkc.referenced_column_id
			where fk.parent_object_id = @ID
		) as a  for xml path('')), space(0)),  N'&#x0D;', nchar(13))
	
	-- check constraints
	select @Result = @Result + replace(isnull((
		select nchar(13) + N'		' + [Column] + N',' as N'data()'
		from (
			select [Column] = N'constraint [' + cc.name + N'] ' +
				case when cc.is_not_for_replication = 1 then N'not for replication ' else space(0) end +  
					N'check' + cc.[definition]
			from sys.check_constraints cc
			where cc.parent_object_id = @ID
		) as a  for xml path('')), space(0)), N'&#x0D;', nchar(13))

	
	set @Result = substring(@Result, 1, len(@Result) - 1) + nchar(13) + N'	)' + nchar(13)
		
	-- indexes definitions		
	select @Result = @Result + isnull(nchar(13) + 
		N'	create ' + [Unique] + [Clustered] + N' index [' + [Name] + 
		N'] on [' + @Schema + N'].[' + @Table + N']('  + substring([Columns], 1, len([Columns]) - 1) + N')', space(0))
	from (
		select 
			[Name] = i.name, 
			[Clustered] = case when i.[type] = 1 then N'clustered' else N'nonclustered' end,
			[Unique] = case when i.is_unique = 1 then N' unique ' else space(0) end,
			[Columns] = (
				select [Name] + N',' as N'data()' from (
					select [Name] = N'[' + c.name + N']'  + case ic.is_descending_key when 0 then N' asc' else N' desc' end
					from sys.index_columns ic 
					inner join sys.columns c on c.object_id = ic.object_id and c.column_id = ic.column_id
					where ic.object_id = @ID and ic.index_id = i.index_id
					) as a for xml path('')
				)
		from sys.indexes i 
		where 
			i.object_id = @ID and 
			i.is_primary_key = 0
		) as a
		
	set @Result = @Result + nchar(13) + nchar(13) + N'end' + nchar(13) + N'go' + nchar(13)-- + nchar(13)

	if @PrintResult = 1 exec fx.printString @Result

	return 0

end		

go
	if exists (select * from sysobjects where id = object_id(N'fx.searchObject') and xtype in (N'P'))
	drop procedure fx.searchObject
	
set quoted_identifier on
go

/*
<documentation>
<summary>
	Searches SQL Server programmability objects (stored procedures, functions, triggers, 
	views) by substring in object's body. 
</summary>

<remarks>
	Masks can be used for searching. * - any char, % - any chars.
</remarks>

<parameters>
<param name="Text">String to search</param>
</parameters>

<example>
	exec fx.searchObject '%anjlab%'
</example>

<author>
	Alex Zakharov
	Copyright (c) AnjLab 2009, http://anjlab.com. All rights reserved.
	The code can be used for free as long as this copyright notice is not removed.
</author>

</documentation>
*/

create procedure fx.searchObject(@Text nvarchar(max)) as
begin
	select so.xtype, so.name
	from dbo.sysobjects so
	where exists (
		select 1
		from syscomments sc1
		left join syscomments sc2 on sc1.id = sc2.id and sc1.colid + 1 = sc2.colid
		where sc1.id = so.id
			and (right(sc1.text, 2000) + left(isnull(sc2.text, ''), 2000) like @Text
			or sc1.text like @Text)
		 )
	order by so.xtype, so.name
end

go
if exists (select * from sysobjects where id = object_id(N'fx.showQueriesStat') and xtype in (N'P'))
	drop procedure fx.showQueriesStat
	
set quoted_identifier on	
go

/*
<documentation>
<summary>
	Shows server-wide queries statistic.
</summary>

<remarks>
	This stored procedure displays the top worst performing queries based on CPU, Execution Count,
    I/O and Elapsed_Time as identified using DMV information. This can be display the worst
    performing queries from an instance, or database perspective.   The number of records shown,
    the database, and the sort order are identified by passing pararmeters.
</remarks>

<parameters>
<param name="Database">
	used to constraint the output to a specific database. If when calling this procedure 
	this parameter is set to a specific database name then only statements that are associated 
	with that database will be displayed. If the parameter is not set then this procedure will 
	return rows associated with any database.
</param>
<param name="Count">
	parameter allows you to control the number of rows returned by this procedure. If this parameter 
	is used then only the TOP x rows, where x is equal to the parameter will be returned, based on 
	the OrderBy parameter.
</param>
<param name="OrderBy">
	parameter identifies the sort order of the rows returned in descending order. This parameter 
	supports the following type: CPU, AE, TE, EC or AIO, TIO, ALR, TLR, ALW, TLW, APR, and TPR, where 
		"ACPU" represents Average CPU Usage
		"TCPU" represents Total CPU usage
		"AE"   represents Average Elapsed Time
		"TE"   represents Total Elapsed Time
		"EC"   represents Execution Count
		"AIO"  represents Average IOs
		"TIO"  represents Total IOs
		"ALR"  represents Average Logical Reads
		"TLR"  represents Total Logical Reads             
		"ALW"  represents Average Logical Writes
		"TLW"  represents Total Logical Writes
		"APR"  represents Average Physical Reads
		"TPR"  represents Total Physical Read
</param>
</parameters>

<example>
	-- Example 1. Top 6 statements in the master database base on Average CPU Usage
    exec fx.showQueriesStat @Database = 'master',@Count = 6,@OrderBy = 'ACPU';
  
	-- Example 2. Top 100 statements order by Average IO
	exec fx.showQueriesStat @Count = 100,@OrderBy = 'ALR';
   
	-- Example 3. Show top 100 statements by Average CPU
	exec fx.showQueriesStat 
</example>

<author>
	Gregory A. Larsen
	Copyright (c) 2008 Gregory A. Larsen. All rights reserved.
</author>

</documentation>
*/

create procedure fx.showQueriesStat(
	@Database sysname = null,
	@Count int = 9999,
	@OrderBy nvarchar(4) = 'ACPU')
as
begin

	if @OrderBy not in ('ACPU','TCPU','AE','TE','EC','AIO','TIO','ALR','TLR','ALW','TWL','APR','TPR')
	begin
			raiserror('@OrderBy parameter not in APCU, TCPU, AE, TE, EC, AIO, TIO, ALR, TLR, ALW, TLW, APR or TPR', 16, 1)
			return -1 
	end

	select top (@Count)
         [Database Name]       = coalesce(db_name(st.[dbid]), db_name(cast(pa.value as int)), 'Resource'),
         [Statement]           = substring(
									[text],
									(isnull(statement_start_offset, 0) / 2 + 1),
									(case 
										when isnull(statement_end_offset, 0) in (-1, 0) then len([text])
										else statement_end_offset / 2
									end - (isnull(statement_start_offset, 0) / 2 + 1))),
         [Schema Name]          = object_schema_name(st.objectid, [dbid]),
         [Object Name]          = object_name(st.objectid, [dbid]),
         [Cached Plan objtype]  = [objtype],
         [Execution Count]      = execution_count,
         [Average IOs]          = fx.Div((total_logical_reads + total_logical_writes + total_physical_reads), execution_count),
         [Total IOs]            = total_logical_reads + total_logical_writes + total_physical_reads,
         [Avg Logical Reads]    = fx.Div(total_logical_reads, execution_count),
         [Total Logical Reads]  = total_logical_reads,
         [Avg Logical Writes]   = fx.Div(total_logical_writes, execution_count),
         [Total Logical Writes] = total_logical_writes, 
         [Avg Physical Reads]   = fx.Div(total_physical_reads, execution_count),
         [Total Physical Reads] = total_physical_reads,
         [Avg CPU]              = fx.Div(total_worker_time, execution_count),
         [Total CPU]            = total_worker_time,
         [Avg Elapsed Time]     = fx.Div(total_elapsed_time, execution_count),
         [Total Elasped Time]   = total_elapsed_time, 
         [Last Execution Time]  = last_execution_time  
    from sys.dm_exec_query_stats qs 
    inner join sys.dm_exec_cached_plans cp ON qs.plan_handle = cp.plan_handle
    cross apply sys.dm_exec_sql_text(qs.plan_handle) st
    cross apply sys.dm_exec_plan_attributes(qs.plan_handle) pa
    where pa.attribute = 'dbid' 
		and (@Database = coalesce(db_name(st.[dbid]), db_name(cast(pa.value as int)), 'Resource') 
		or @Database is null)
	order by case @OrderBy
		when 'ACPU' then fx.Div(total_worker_time, execution_count)
		when 'TCPU' then total_worker_time
		when 'AE'   then fx.Div(total_elapsed_time, execution_count)
		when 'TE'   then total_elapsed_time 
		when 'EC'   then execution_count
		when 'AIO'  then fx.Div((total_logical_reads + total_logical_writes + total_physical_reads), execution_count)
		when 'TIO'  then total_logical_reads + total_logical_writes + total_physical_reads
		when 'ALR'  then fx.Div(total_logical_reads, execution_count)
		when 'TLR'  then total_logical_reads
		when 'ALW'  then fx.Div(total_logical_writes, execution_count)
		when 'TLW'  then total_logical_writes 
		when 'APR'  then fx.Div(total_physical_reads, execution_count)
		when 'TPR'  then total_physical_reads
	end desc

 end

 go
 if exists (select * from sysobjects where id = object_id(N'fx.writeStringToFile') and xtype in (N'P'))
	drop procedure fx.writeStringToFile
	
set quoted_identifier on	
go

/*
<documentation>
<summary>
	Writes string to existing text File or creates new one.
</summary>

<remarks>
	 Using OLE automation procedures mast be switched on. Use the following code to
	 turn it on:
		sp_configure 'show advanced options', 1
		reconfigure
		sp_configure 'Ole Automation Procedures', 1
		reconfigure
</remarks>

<example>
	exec fx.writeStringToFile N'This is an example', N'c:\', N'example.txt'
</example>

<parameters>
<param name="String">String to write</param>
<param name="Path">File location</param>
<param name="Filename">File name</param>
</parameters>

<author>
	Phil Factor
	http://www.simple-talk.com/sql/t-sql-programming/reading-and-writing-Files-in-sql-server-using-t-sql/
</author>

</documentation>
*/

create procedure fx.writeStringToFile(
	@String nvarchar(max), --8000 in SQL Server 2000
	@Path nvarchar(255),
	@Filename nvarchar(100)

)
as
begin
	declare  
		@ObjectFileSystem int,
		@ObjectTextStream int,
		@ObjectErrorObject int,
		@ErrorMessage Varchar(1000),
		@Command varchar(1000),
		@State int,
		@FileAndPath varchar(80),
		@Source varchar(255),
		@Description Varchar(255),
		@HelpFile Varchar(512),
		@HelpID int


	set nocount on

	if not exists(select * from sys.configurations where name = 'Ole Automation Procedures' and [Value] = 1)
	begin
		print 'Ole Automation Procedures is not enabled'
		return -1
	end

	set @ErrorMessage = 'opening the File System Object'
	execute @State = sp_OACreate 'Scripting.FileSystemObject' , @ObjectFileSystem out
	set @FileAndPath = @path + '\' + @Filename

	if @State = 0 
	begin

		select @ObjectErrorObject = @ObjectFileSystem , @ErrorMessage = 'creating File "' + @FileAndPath + '"'
		execute @State = sp_OAMethod @ObjectFileSystem   , 'CreateTextFile'	, @ObjectTextStream out, @FileAndPath,2, True
		select @ObjectErrorObject = @ObjectTextStream, @ErrorMessage = 'writing to the File "' + @FileAndPath + '"'
		execute @State = sp_OAMethod @ObjectTextStream, 'Write', Null, @String
		select @ObjectErrorObject = @ObjectTextStream, @ErrorMessage = 'closing the File "' + @FileAndPath + '"'
		execute @State = sp_OAMethod @ObjectTextStream, 'Close'

	end else begin

		execute sp_OAGetErrorInfo @ObjectErrorObject, 
			@source output, @Description output, @HelpFile output, @HelpID output
		set @ErrorMessage = 'Error whilst ' + coalesce(@ErrorMessage, 'unknown action')
				+ ', ' + coalesce(@Description,'')
		raiserror (@ErrorMessage, 16, 1)
		return -1

	end

	execute sp_OADeStroy @ObjectTextStream
	execute sp_OADeStroy @ObjectTextStream
	return 0

end

go
