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


