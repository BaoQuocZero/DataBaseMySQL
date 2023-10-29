--Thêm 1 khách hàng mới
INSERT INTO [dbo].[Customers]([CustomerID], [CompanyName], [ContactName], [Phone])
VALUES ('KH123', 'TITV.VN', 'LE NHAT TUNG', '0123456789');

SELECT TOP (1000) [CustomerID]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[Phone]
      ,[Fax]
  FROM [NORTHWND].[dbo].[Customers]


INSERT INTO [dbo].[Customers]
VALUES ('KH456', 'TITV.VN', 'LE NHAT TUNG', NULL, NULL, NULL, NULL, NULL, NULL,  '0123456789', NULL);

--Thêm 1 sản phẩm mới
INSERT INTO [dbo].[Products]([ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock])
VALUES ('New Product', 1, 2, '24 bottles', 10.99, 100);