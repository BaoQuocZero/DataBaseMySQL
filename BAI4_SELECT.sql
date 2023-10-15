--Câu lệnh lấy tên tất cả sản phẩm
SELECT [ProductName]
FROM [dbo].[Products];

--Câu lệnh lấy tên tất cả sản phẩm, giá bán mỗi đơn vị, số lượng sản phẩm mỗi đơn vị
SELECT [ProductName], [UnitPrice], [QuantityPerUnit]
FROM [dbo].[Products];

--Câu lệnh lấy tên khách hàng và quốc gia khách đó
SELECT [CompanyName], [Country]
FROM [dbo].[Customers];

--Câu lệnh lấy tên và số đt cua tất cả nhà cung cấp hàng
SELECT [CompanyName], [Phone]
FROM [dbo].[Suppliers];