﻿--LẤY CÁC ĐƠN HÀNG CHƯA ĐƯỢC GIAO
SELECT *
FROM Orders
WHERE [ShippedDate] IS NULL

--LẤY DANH SÁCH KHÁCH HÀNG CÚ KHU VỤC REGION KHÔNG NULL
SELECT *
FROM Customers
WHERE [Region] IS NOT NULL

--LẤY CÁC ĐƠN HÀNG CHƯA GIAO HÀNG VÀ CÓ KHU VỤC GIAO HÀNG SHIPREGION KHÔNG NULL
SELECT *
FROM Orders
WHERE [ShippedDate] IS NULL AND [ShipRegion] IS NOT NULL;