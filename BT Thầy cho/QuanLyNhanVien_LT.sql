Create Database QuanLyNhanVien_LT
go 
use QuanLyNhanVien_LT

CREATE TABLE TaiKhoan
(
	TenDN Varchar(20) Primary key,
	TenHT NVarchar(100) not null,
	MatKhau varchar(20) not null,
	quyen int,
) 
go

Create Table NhanVien
(
	MaNV varchar(20) primary key,
	HoTen Nvarchar(100) Not null,
	NamSinh int,
	GioiTinh Nvarchar(5),
	DiaChi Nvarchar(100),
	DienThoai varchar(15),
)
GO
-- Nhập liệu cho bảng đăng nhập
Insert into TaiKhoan values('phong',N'Hữu Phong','123456',1) 
Insert into TaiKhoan values('Binh',N'Thiên Bình','123456',0)  
Insert into TaiKhoan values('An',N'Thanh An','123456',0)  
Insert into TaiKhoan values('anh',N'Hà Anh','123456',0)  
Insert into TaiKhoan values('quoc',N'Hữu Quốc','123456',0)  
Insert into TaiKhoan values('quoc1',N'Hữu Quốc','123456',0)  

select * From TaiKhoan

------- Thêm dữ liệu cho bảng giảng viên-----------
Insert into NhanVien values('NV0001',N'Hữu Phong','1990',N'Nam',N'Vĩnh Long','0988994450')
Insert into NhanVien values('NV0002',N'Minh Thanh','1987',N'Nam',N'Bạc Liêu','0988993450')
Insert into NhanVien values('NV0003',N'Thúy Liễu','1984',N'Nữ',N'Trà Vinh','0988994460')
Insert into NhanVien values('NV0004',N'Nam Bình','1979',N'Nam',N'An Giang','0988994457')
Insert into NhanVien values('NV0005',N'Ngọc Bình','1981',N'Nữ',N'Cà Mau','0988994750')
Insert into NhanVien values('NV0006',N'Hoàng Phú','1982',N'Nam',N'Hậu Giang','0987994450')

DELETE 
FROM NhanVien
WHERE MaNV = 'NV00024';

UPDATE NhanVien SET HoTen = 'A', NamSinh = '2000', GioiTinh = 'NAM', DiaChi = 'TV', DienThoai = '0372701722' WHERE MaNV = 'NV1'

SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS T 
JOIN INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE C 
ON C.CONSTRAINT_NAME = T.CONSTRAINT_NAME 
WHERE C.TABLE_NAME ='NhanVien' 
AND T.CONSTRAINT_TYPE ='NV0004'


select * From NhanVien

SELECT *
FROM NhanVien
WHERE [MaNV] = 'NV0002'

SELECT *
FROM NhanVien
WHERE [HoTen] = N'Minh Thanh'