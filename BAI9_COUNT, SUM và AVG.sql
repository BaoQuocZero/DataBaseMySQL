﻿--VIẾT CÂU LỆNH CHO BIẾT SỐ LƯỢNG KHÁCH HÀNG (KHÔNG ĐÉM CÁC DÒNG NULL)
SELECT COUNT (*) AS [SỐ LƯỢNG KHÁCH HÀNG]
FROM Customers;

--VIẾT CÂU LỆNH CHO BIẾT TỔNG TIỀN VẬN CHUYỂN CỦA TẤT CẢ ĐƠN HÀNG [FREIGHT] (BỊ LỖI NẾU CÓ DÒNG LÀ NULL)
SELECT SUM([Freight]) AS [TỔNG TIỀN VẬN CHUYỂN CỦA TẤT CẢ ĐƠN HÀNG]
FROM Orders;

--VIẾT CÂU LỆNH CHO BIẾT TRUNG BÌNH SỐ LƯỢNG ĐẶT HÀNG QUANTILY CỦA TẤT CẢ SẢN PHẨM BẢNG ORDER DETAILS (BỊ LỖI NẾU CÓ DÒNG LÀ NULL)
SELECT AVG([Quantity]) AS [TRUNG BÌNH SỐ LƯỢNG ĐẶT HÀNG]
FROM [Order Details];

--VIẾT CÂU LỆNH CHO BIẾT SỐ LƯỢNG, TỔNG HÀNG TRONG KHO VÀ TRUNG BÌNH GIÁ SẢN PHẨM TRONG PRODUCT (BỊ LỖI NẾU CÓ DÒNG LÀ NULL)
SELECT COUNT(*) AS [SỐ LƯỢNG], SUM([UnitsInStock]) AS [TỔNG HÀNG TRONG KHO], AVG([UnitPrice]) AS [TRUNG BÌNH GIÁ SẢN PHẨM]
FROM Products;

--VIẾT CÂU LỆNH CHO BIẾT SỐ LƯỢNG ĐƠN HÀNG TỪ ORDERS(BỊ LỖI NẾU CÓ DÒNG LÀ NULL)
SELECT COUNT(*)
FROM Orders;

SELECT COUNT([OrderID])
FROM Orders;