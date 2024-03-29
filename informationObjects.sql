USE [Information]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/06/2019 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](250) NOT NULL,
	[LastName] [varchar](250) NOT NULL,
	[Phone] [varchar](50) NULL,
	[Zip] [int] NULL,
	[HiredDate] [date] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Employee_Add]    Script Date: 10/06/2019 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Employee_Add]
	@FirstName as varchar(250),
	@LastName as varchar(250),
	@Phone as varchar(50),
	@Zip as int,
	@HiredDate as date

as

begin
	insert into Employee 
	Values (@FirstName, @LastName, @Phone, @Zip, @HiredDate)
end
GO
/****** Object:  StoredProcedure [dbo].[Employee_GetAll]    Script Date: 10/06/2019 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Employee_GetAll]

AS

begin
	select [EmployeeId], [FirstName], [LastName], [Phone], [Zip], [HiredDate]
	from Employee
	order by [HiredDate]
end

GO
/****** Object:  StoredProcedure [dbo].[Employee_GetById]    Script Date: 10/06/2019 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Employee_GetById] @id as int

as 

begin
	select [EmployeeId], [FirstName], [LastName], [Phone], [Zip], [HiredDate]
	from Employee
	where EmployeeId = @id
end


GO
/****** Object:  StoredProcedure [dbo].[EmployeeSearchByLastNameOfPhone]    Script Date: 10/06/2019 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[EmployeeSearchByLastNameOfPhone]
	@searchText as varchar(250)

AS

begin
	select [EmployeeId], [FirstName], [LastName], [Phone], [Zip], [HiredDate]
	from [dbo].[Employee]
	where (LastName like '%' + @searchText + '%') or
		(Phone like '%' + @searchText + '%')
end


GO
