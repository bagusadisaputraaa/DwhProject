CREATE PROCEDURE dbo.summary_order_status (
	@Id_Status INT
	)
	AS
	BEGIN
		SELECT
		Id_Order,
		First_Name,
		Last_Name,
		Product_Name,
		Quantity,
		Status_Order
		FROM sales_order AS so
		JOIN status_order AS sto ON so.StatusId = sto.Id_Status
		JOIN customer AS cus ON so.CustomerId = cus.Id_Customer
		JOIN product AS pro ON so.ProductId = pro.Id_Product
		WHERE sto.Id_Status = @Id_Status;
		END;