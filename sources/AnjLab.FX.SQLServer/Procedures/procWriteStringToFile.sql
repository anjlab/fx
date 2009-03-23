if exists (select * from sysobjects where id = object_id(N'fx.procWriteStringToFile') and xtype in (N'P'))
drop procedure fx.procWriteStringToFile
go

/*
<summary>
	Writes given String to existing text File or creates new one.
</summary>

<remarks>
 Using OLE automation procedures mast be switched on. Use the following code to
 turn it on:

	sp_configure 'Ole Automation Procedures', 1
	reconfigure

</remarks>

<author>
	Phil Factor
	http://www.simple-talk.com/sql/t-sql-programming/reading-and-writing-Files-in-sql-server-using-t-sql/
</author>

<example>
	exec fx.procWriteStringToFile N'This is an example', N'c:\', N'example.txt'
</example>

<param name="String">String to write</param>
<param name="Path">File location</param>
<param name="Filename">File name</param>
*/

create procedure fx.procWriteStringToFile(
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

select @ErrorMessage = 'opening the File System Object'
execute @State = sp_OACreate 'Scripting.FileSystemObject' , @ObjectFileSystem out
select @FileAndPath = @path + '\' + @Filename

if @State=0 
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
	select @ErrorMessage = 'Error whilst ' + coalesce(@ErrorMessage, 'unknown action')
			+ ', ' + coalesce(@Description,'')
	raiserror (@ErrorMessage, 16, 1)

end

execute  sp_OADeStroy @ObjectTextStream
execute sp_OADeStroy @ObjectTextStream

end