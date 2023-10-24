--TỪ PRODUCT VÀ CATEGORIES HÃY IN RA MÃ THỂ LOẠI, TÊN THỂ LOẠI, MÃ SẢN PHẨM, TÊN SẢN PHẨM
SELECT P.CategoryID, P.ProductName, C. CategoryID, C.CategoryName
FROM Products AS P, Categories AS C
WHERE P.CategoryID = P.CategoryID

--TỪ EMPLOYEES VÀ ORDER IN MÃ NHÂN VIÊN, TÊN NHÂN VIÊN, SỐ ĐƠN MÀ NHÂN VIÊN BÁN ĐƯỢC
SELECT E.EmployeeID, E.LastName, O.EmployeeID, COUNT(O.OrderID) AS SO_DON
FROM Employees AS E, Orders AS O
WHERE E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID, E.EmployeeID, E.LastName

--TỪ CUSTOMERS VÀ ORDER LẪY MÃ KHÁCH, TÊN CÔNG TY, TEEN LIÊN HỆ,SỐ ĐƠN ĐÃ MUA, VỚI QUỐC GIA LÀ UK
SELECT C.CustomerID, C.CompanyName, C.ContactName, COUNT(O.OrderID)
FROM Customers AS C, Orders AS O
WHERE C.CustomerID = O.CustomerID AND C.Country = 'UK'
GROUP BY C.CustomerID, C.CompanyName, C.ContactName

--TỪ ORDER VÀ SHIPPERS IN MÃ VẬN CHUYỂN, TÊN CÔNG TY VẬN CHUYỂN, TỔNG SỐ TIỀN VẬN CHUYỂN, SÁP XẾP THEO TIỀN GIẨM DẦN
SELECT S.CompanyName, S.ShipperID, SUM(O.Freight)
FROM Orders AS O, Shippers AS S
WHERE O.ShipVia = S.ShipperID
GROUP BY S.ShipperID, S.CompanyName
ORDER BY SUM(O.Freight) DESC

--TỪ PRODUCT VÀ SUPPLIERS IN MÃ NHÀ CUNG CẤP, TÊN CÔNG TY, TỔNG SỐ SẢN PHẨM ĐÃ CUNG CẤP
SELECT S.SupplierID, S.CompanyName, SUM(P.ProductID)
FROM Products AS P, Suppliers AS S
WHERE P.SupplierID = S.SupplierID
GROUP BY S.SupplierID, S.CompanyName

SELECT TOP 1 S.SupplierID, S.CompanyName, SUM(P.ProductID)
FROM Products AS P, Suppliers AS S
WHERE P.SupplierID = S.SupplierID
GROUP BY S.SupplierID, S.CompanyName
ORDER BY SUM(P.ProductID) DESC

--TỪ ORDER VÀ ORDER DETAILSIN MÃ ĐƠN HÀNG, TỔNG TIỀN CỦA SẢN PHẨM
SELECT O.OrderID, SUM(OD.UnitPrice *OD.Quantity)
FROM Orders AS O, [Order Details] AS OD
WHERE O.OrderID = OD.OrderID
GROUP BY O.OrderID

--TỪ ORDER VÀ ORDER DETAILSIN, EMPLOYEERS MÃ ĐƠN HÀNG, MÃ NHÂN VIÊN, TỔNG TIỀN CỦA SẢN PHẨM CỦA ĐƠN HÀNG
SELECT O.OrderID, E.EmployeeID, E.FirstName, E.LastName, SUM(OD.UnitPrice *OD.Quantity)
FROM Orders AS O, [Order Details] AS OD, Employees AS E
WHERE O.OrderID = OD.OrderID AND O.EmployeeID = E.EmployeeID
GROUP BY O.OrderID, E.EmployeeID, E.FirstName, E.LastName

--TỪ ORDER VÀ CUSTOMERS, SHIPPERS MÃ ĐƠN HÀNG, TÊN KHÁCH HÀNG, TÊN CÔNG TY VẬN CHUYỂN, CHỈ NHŨNG ĐƠN ĐẾN UK TRONG 1997
SELECT O.OrderID, C.ContactName, S.CompanyName, O.ShipCountry, O.ShippedDate
FROM Orders AS O, Customers AS C, Shippers AS S
WHERE O.CustomerID = C.CustomerID AND O.ShipVia = S.ShipperID AND O.[ShipCountry] = 'UK' AND YEAR(O.[ShippedDate]) = 1997