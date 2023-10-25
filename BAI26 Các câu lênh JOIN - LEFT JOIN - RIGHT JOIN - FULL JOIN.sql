--DÙNG INNER JOIN TỪ PRODUCT VÀ CATEGORIES IN MÃ THỂ LOẠI, TÊN THỂ LOẠI, MÃ SẢN PHẨM, TÊN SẢN PHẨM
SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Categories AS C
INNER JOIN Products AS P
ON C.CategoryID = P.CategoryID

--DÙNG INNER JOIN TỪ PRODUCT VÀ CATEGORIES IN MÃ THỂ LOẠI, TÊN THỂ LOẠI, SỐ LƯỢNG SẢN PHẨM MỖI THỂ LOẠI
SELECT C.CategoryID, C.CategoryName, COUNT(P.ProductID) AS TONG
FROM Categories AS C
INNER JOIN Products AS P
ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryID, C.CategoryName

--DÙNG INNER JOIN, LEFT JOIN TỪ PRODUCT VÀ CATEGORIES IN MÃ THỂ LOẠI, TÊN THỂ LOẠI, SỐ LƯỢNG SẢN PHẨM MỖI THỂ LOẠI
SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Categories AS C
INNER JOIN Products AS P
ON C.CategoryID = P.CategoryID

SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Categories AS C
LEFT JOIN Products AS P
ON C.CategoryID = P.CategoryID

--DÙNG RIGHT OUTER JOIN HOẶC RIGHT JOIN TỪ CUSTOMERS VÀ ORDER IN MÃ ĐƠN HÀNG, TÊN CÔNG TY
SELECT C.CompanyName, O.OrderID
FROM Orders AS O
RIGHT JOIN  Customers AS C
ON C.CustomerID = O.CustomerID

--DÙNG FULL OUTER JOIN HOẶC FULL JOIN TỪ pruduct VÀ category MÃ THỂ LOẠI, TÊN THỂ LOẠI, MÃ SẢN PHẨM, TÊN SẢN PHẨM
SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Categories AS C
FULL JOIN  Products AS P
ON C.CategoryID = P.CategoryID