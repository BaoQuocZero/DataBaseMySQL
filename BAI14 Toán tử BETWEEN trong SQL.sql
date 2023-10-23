--Toán tử BETWEEN chọn giá trị trong phạm vi xác định, có thể là số, văn bản, ngày tháng
SELECT *
FROM Products
WHERE [UnitPrice] BETWEEN 10 AND 20

--DANH SÁCH CÁC ĐƠN HÀNG 1996-07-01 ĐẾN 1996-07-31
SELECT *
FROM Orders
WHERE [OrderDate] BETWEEN '1996-07-1' AND '1996-07-31'

--TỔNG TIỀN VẬN CHUYỂN TỪ FREIGHT 1996-07-01 ĐẾN 1996-07-31
SELECT SUM([Freight])
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-1' AND '1996-07-31'

--LẤY DANH SÁCH DƠN ĐẶT HÀNG TỪ 1997-1-1 DẾN 1997-12-31 VÀ ĐƯỢC VẬN CHUYỂN BẰNG ĐƯỜNG THỦY SHIPVIA=3
SELECT *
FROM Orders
WHERE [OrderDate] BETWEEN '1997-1-1' AND '1997-12-31' AND [ShipVia] = 3