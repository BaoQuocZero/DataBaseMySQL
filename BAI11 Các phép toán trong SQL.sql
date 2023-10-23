--Tính số hàng tồn kho UnitsInStock sau khi đã loại bỏ số đã được đặt trước UnitOnOrther
SELECT [ProductID], [ProductName], [UnitsInStock], [UnitsOnOrder], [UnitsInStock] - [UnitsOnOrder] AS TON_KHO
FROM [dbo].[Products];

--Tính ĐƠN HÀNG CHI TIẾT CHO TẤT CẢ SẢN PHẨM TRONG BẢNG ORDERDERAIL (UNITPRICE * QUANTITY)
SELECT *, [UnitPrice] * Quantity AS TONG_TIEN
FROM [Order Details];

--TÍNH TYRLEEJ GIÁ VẬN CUYỂN ĐƠN ĐẶT HÀNG FREIGHT TRUNG BÌNH CỦA CÁC DƠN ĐẶT HÀNG BẢNG ORDERS SO VỚI GIÁ TRỊ VẬN CHUYỂN CỦA ĐƠN ĐẶT HÀNG LỚN NHẤT MAXFREUGHT
SELECT AVG([Freight])/MAX([Freight])
FROM Orders;

--LIỆT KÊ TẤT CẢ SẢN PHẨM VÀ GIẢM GIÁ 10% CHO TẤT CẢ SẢN PHẨM
SELECT *, [UnitPrice]*0.9 AS GIA_SAO_KHI_GIAM
FROM Products;