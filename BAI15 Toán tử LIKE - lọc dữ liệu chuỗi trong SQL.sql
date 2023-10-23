--LIKE - lọc dữ liệu chuỗi trong SQL
--DẤU % ĐẠI DIỆN CHO NHIỀU KÍ TỰ
--DẤU _ ĐẠI DIỆN CHO KÝ T ĐƠN

--LỌC CÁC KHÁCH HÀNG ĐẾN TỪ QUỐC GIA CÓ TÊN BẮT ĐẦU BẰNG CHỮ 'A'
SELECT *
FROM Customers
WHERE [Country] LIKE 'A%' --% ĐẠI DIỆN CHO NHIỀU KÝ TỰ SAU A

--CÁC ĐƠN HÀNG GỬI ĐẾN THÀNH PHỐ CÓ TÊN CHỨA CHỮA 'A'
SELECT *
FROM Orders
WHERE [ShipCity] LIKE '%A%'

--LỌC CÁC ĐƠN HÀNG VỚI ĐIỀU KIỆN LIKE 'U_' VÀ LIKE 'U%'
SELECT *
FROM Orders
WHERE [ShipCountry] LIKE 'U_'

SELECT *
FROM Orders
WHERE [ShipCountry] LIKE 'U%'