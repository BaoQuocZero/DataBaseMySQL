--TÍNH SỐ ĐƠN ĐẶT HÀNG TRONG NĂM 1997 CỦA TỪNG KHÁCH
SELECT [CustomerID], COUNT([CustomerID]) AS SO_DON, YEAR([OrderDate]) AS NAM
FROM Orders
WHERE YEAR([OrderDate]) = 1997
GROUP BY [CustomerID], YEAR([OrderDate])

--SỐ ĐƠN ĐẶT HÀNG TRONG 5/1997 CỦA TỪNG KHÁCH
SELECT *
FROM [dbo].[Orders]
WHERE MONTH([OrderDate]) = 5 AND YEAR([OrderDate]) = 1997

--SỐ ĐƠN ĐẶT HÀNG TRONG 4/9/1996
SELECT *
FROM [dbo].[Orders]
WHERE DAY([OrderDate]) = 4 AND MONTH([OrderDate]) = 9 AND YEAR([OrderDate]) = 1996

--LẤY DANH SÁCH KHÁCH HÀNG ĐẶT HÀNG TRONG 1998 VÀ SỐ ĐƠN MỖI THÁNG SẤP XẾP TĂNG DẦN
SELECT [CustomerID], MONTH([OrderDate]) AS THANG, COUNT([OrderID]) AS SO_DON
FROM [dbo].[Orders]
WHERE YEAR([OrderDate]) = 1998
GROUP BY [CustomerID], MONTH([OrderDate])
ORDER BY MONTH([OrderDate]) ASC

--LỌC CÁC ĐON ĐÃ GIAO VÀO THÁNG 5, SẤP XẾP TĂNG DẦN THEO NĂM
SELECT * ,YEAR([ShippedDate]) AS NAM
FROM Orders
WHERE MONTH([ShippedDate]) = 5
ORDER BY YEAR([ShippedDate]) ASC