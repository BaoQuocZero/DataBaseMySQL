--LIỆT KÊ TÁT CẢ CÓ SỐ LƯỢNG UNITINSTOCK TỪ 50 - 100
SELECT *
FROM Products
WHERE [UnitsInStock]>50 AND [UnitsInStock]<100

--TẤT CẢ ĐƠN GIAO MUỘN ĐẾN BRAZIL
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'Brazil' AND [RequiredDate]<[ShippedDate]

--TẤT CẢ SẢN PHẢM GIÁ DƯỚI 100 ĐÔ VÀ MÃ THỂ LOẠI KHÁC 1, DÙNG NOT
SELECT *
FROM Products
WHERE NOT [UnitPrice] > 100 AND [CategoryID] = 1

--TẤT CẢ ĐƠN HÀNG CÓ GIÁ VẬN CHUYỂN FREIGHT 50-100
SELECT *
FROM Orders
WHERE [Freight] > 50 AND [Freight]<100
