SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--DROP PROCEDURE pep;
CREATE PROCEDURE [dbo].[luis2] 
AS 
BEGIN
SELECT salonID,
       salonName,
       address,
       location,
       managerName,
       managetMobile,
       phone,
       pep FROM dbo.Salons 
END
GO
