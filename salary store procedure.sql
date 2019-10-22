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
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:save salary inforatmation
-- =============================================
CREATE PROCEDURE SaveSalary
	-- Add the parameters for the stored procedure here
@EmpCode int,
@DateOfSalary datetime,
@Basic numeric(10,0),
@Hra numeric(10,0),
@Da numeric(10,0),
@SalarySheetNo int output	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	set NoCount on;

    -- Insert statements for procedure here
	insert into SalaryInfo values(@EmpCode,@DateOfSalary,@Basic,@Hra,@Da)
	set @SalarySheetNo=SCOPE_IDENTITY()
END
GO


----------------------sum of basic----------------
CREATE PROCEDURE SumOfBasic
	-- Add the parameters for the stored procedure here
@EmpCode int,
@Sum numeric(10,0) output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	set NoCount on;

    -- Insert statements for procedure here
	select @Sum=sum(Basic) from SalaryInfo where EmpCode=@EmpCode;
END
GO

