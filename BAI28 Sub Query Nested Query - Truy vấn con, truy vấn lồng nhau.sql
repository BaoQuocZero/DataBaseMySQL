--TÌM GIÁ TRUNG BÌNH SẢN PHẨM
SELECT AVG([UnitPrice])
FROM Products

--LỌC SẢN PHẨM CÓ GIÁ LỚN HƠN GIÁ TRUNG BÌNH
SELECT * 
FROM Products
WHERE [UnitPrice] < (
	SELECT AVG([UnitPrice])
	FROM Products
)


--LỌC KHÁCH HÀNG CÓ SỐ ĐƠN HÀNG > 10
SELECT C.ContactName, O.CustomerID, COUNT([OrderID])
FROM Orders AS O
LEFT JOIN Customers AS C
ON O.CustomerID = C.CustomerID
GROUP BY C.ContactName, O.CustomerID
HAVING COUNT([OrderID]) > 10

SELECT C.CustomerID
FROM Customers AS C
WHERE C.CustomerID IN (
	SELECT O.CustomerID
	FROM Orders AS O	
	GROUP BY O.CustomerID
	HAVING COUNT([OrderID]) > 10)

--TỔNG TIỀN TỪNG ĐƠN HÀNG
SELECT O.*,
	(
	SELECT SUM(OD.Quantity * OD.UnitPrice)
	FROM [Order Details] OD
	WHERE O.OrderID = OD.OrderID
	) TONG_TIEN
FROM Orders AS O

--LỌC TÊN SẢN PHẨM VÀ TÔNG SỐ ĐƠN HÀNG TỪNG SẢN PHẨM
SELECT P.ProductName ,
	(
	SELECT COUNT(*)
	FROM [Order Details] OD
	WHERE OD.ProductID = P.ProductID
	) [TÔNG SỐ ĐƠN HÀNG TỪNG SẢN PHẨM]
FROM Products P