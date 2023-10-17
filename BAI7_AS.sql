--Viết câu lệnh SQL lấy CompanyName và đặt tên thành Công ty, PostalCode thành Mã bưu điện
SELECT  [CompanyName] AS [Tên công ty],
	    [PostalCode] AS [Mã bưu điện],
		[City] "Thành phố"
FROM [dbo].[Customers]; 

--Viết câu lệnh thay thế LastName là Họ, FirstName là Tên
SELECT [LastName] AS [Họ], [FirstName] AS [Tên]
FROM [dbo].[Employees];

--Viết câu lệnh 15 dòng đầu tiên Orders và đặt tên cho nó là [o]
SELECT TOP 15 [o].*
FROM [dbo].[Orders] AS [o];