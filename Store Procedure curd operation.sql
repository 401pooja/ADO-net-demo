-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		puja sugate
-- Create date: 22-10-2019
-- Description:	Empmaster
-- =============================================
CREATE PROCEDURE SaveEmployee
	-- Add the parameters for the stored procedure here

	@Empcode int,
	@EmpName nvarchar(50),
	@EmpDob datetime,
	@EmpGender nvarchar(50),
	@EmpDepartment nvarchar(50),
	@EmpDesignation nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into EmpMaster values(@Empcode,@EmpName,@empDob,@EmpGender,@EmpDepartment,@EmpDesignation);
	
END
GO
-------------Delete=============
Create procedure DeleteEmployee
@EmpCode int
As
Begin
delete from EmpMaster where @EmpCode=@EmpCode;
end
go

---------------update------------------
Create procedure UpdateEmployee
    @Empcode int,
	@EmpName nvarchar(50),
	@EmpDob datetime,
	@EmpGender nvarchar(50),
	@EmpDepartment nvarchar(50),
	@EmpDesignation nvarchar(50)
	As
	Begin
	update EmpMaster set @EmpName=@EmpName,@EmpDob=@EmpDob,@EmpGender=@EmpGender,@EmpDepartment=@EmpDepartment,@EmpDesignation=@EmpDesignation where @Empcode=@Empcode
	end
	go