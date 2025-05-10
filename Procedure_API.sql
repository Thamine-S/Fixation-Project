CREATE PROCEDURE [dbo].[API] 
	-- Add the parameters for the stored procedure here
	@Location int       = NULL  -- NULL default value
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		SELECT  
    pi.ProductID, 
    pi.Quantity, 
    pp.Name
FROM 
    Production.ProductInventory pi
JOIN 
    Production.Product pp ON pi.ProductID = pp.ProductID
WHERE 
    pi.LocationID = @Location; --- <- Aqui se altera com base em qual dos lugares for selecionado 


		SELECT  
    COUNT(ProductID) AS Produtos_total, 
    SUM(Quantity) AS Quantidade_total
	
FROM 
    Production.ProductInventory 


WHERE 
    LocationID = @Location --- <- Aqui se altera com base em qual dos lugares for selecionado ;