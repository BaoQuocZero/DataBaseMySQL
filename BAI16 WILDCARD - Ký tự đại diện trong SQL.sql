--LỌC CÁC CÓ TÊN LIÊN HỆ BẮT ĐẦU BẰNG 'A'
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'A%'

--LỌC CÁC CÓ TÊN LIÊN HỆ BẮT ĐẦU BẰNG 'H' VÀ SAU ĐÓ LÀ BẮT ĐẦU BẰNG BẤT KỲ KÝ TỰ NÀO, ÍT NHẤT 2 KÝ TỰ
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'H_%'

--LỌC TẤT CẢ ĐƠN HÀNG ĐẾN THÀNH PHỐ CÓ TÊN BẮT ĐẦU BÀNG 'L' CHỮ CÁI THỨ 2 LÀ'U' HOẶC 'O'
SELECT *
FROM Orders
WHERE [ShipCity] LIKE 'L[U,O]%'

--LỌC TẤT CẢ ĐƠN HÀNG ĐẾN THÀNH PHỐ CÓ TÊN BẮT ĐẦU BÀNG 'L' CHỮ CÁI THỨ 2 KHÔNG LÀ'U' HOẶC 'O'
SELECT *
FROM Orders
WHERE [ShipCity] LIKE 'L[^U,O]%'

--LỌC TẤT CẢ ĐƠN HÀNG ĐẾN THÀNH PHỐ CÓ TÊN BẮT ĐẦU BÀNG 'L' CHỮ CÁI THỨ 2 LÀ CÁC KÝ TỰ TỪ A ĐẾN E
SELECT *
FROM Orders
WHERE [ShipCity] LIKE 'L[A-E]%'

--LỌC TẤT CẢ NHÀ CUNG CẤP CÓ TÊN BẮT ĐẦU LÀ 'A' VÀ KHÔNG CHỨA B TRONG TÊN
SELECT *
FROM [dbo].[Suppliers]
WHERE [CompanyName] LIKE 'A%[^B]%'