CREATE PROCEDURE dbo.location
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT LocationID, Name 
FROM Production.Location 
ORDER BY LocationID 

END
GO