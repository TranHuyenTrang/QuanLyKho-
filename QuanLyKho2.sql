create table LoaiHang(
MaLoaiHang varchar(20) primary key,
TenLoaiHang nvarchar(100)
)
create table Kho(
MaKho varchar(20) primary key,
TenKho nvarchar(50),
DiaChi nvarchar(100),
DienThoai varchar(10),
TenThuKho nvarchar(100)
)
Drop table NguoiNhan
create table NguoiNhan(
MaNguoiNhan varchar(20) primary key,
TenNguoiNhan nvarchar(50),
DienThoai varchar(10),
CMND varchar(10),
--KhachHangMa varchar(20)foreign key(KhachHangMa) references KhachHang(MaKH),
)
create table NhomKhachHang(
MaNhomKH varchar(20) primary key,
TenNhomKH nvarchar(50)
)
create table KhachHang(
MaKH varchar(20) primary key,
TenKH nvarchar(50),
DiaChi nvarchar(100),
DienThoai varchar(10),
NhomKHMa varchar(20)foreign key (NhomKHMa) references NhomKhachHang(MaNhomKH)
)
create table NuocSX (
MaNuocSX varchar(20) primary key,
NuocSX nvarchar(50)
)
create table PhieuXuat(
MaPX varchar(20) primary key,
NgayXuat datetime ,
SoLuongXuat varchar(10),
LyDo nvarchar(150),
DonGia varchar(10),
NguoiNhanMa varchar(20)foreign key(NguoiNhanMa) references NguoiNhan(MaNguoiNhan),
--HangMa varchar(20)foreign key (HangMa) references BanHang(MaHang),
KhoMa varchar(20) foreign key(khoMa) references Kho(MaKho),
KHMa varchar(20)foreign key(KHMa) references KhachHang(MaKH)
)
create table BanHang(
MaHang varchar(20) primary key,
TenHang nvarchar(50),
KichThuoc varchar(10),
DonViTinh varchar(10),
Ton varchar(10),
LoaiHangMa varchar(20)foreign key(LoaiHangMa)references LoaiHang(MaLoaiHang),
KhoMa varchar(20)foreign key(KhoMa) references Kho(MaKho),
PhieuXuatMa varchar(20)foreign key (PhieuXuatMa) references PhieuXuat(MaPX),
NuocSXMa varchar(20) foreign key(NuocSXMa) references NuocSX(MaNuocSX)
)
alter table NguoiNhan alter column KhachHangMa varchar(20) foreign key(KhachHangMa) references KhachHang(MaKH)
--alter table NguoiDung alter column ThongTin nvarchar(50)
create table NhaCungCap(
MaNCC varchar(20) primary key,
TenNCC nvarchar(50),
DiaChi nvarchar(100),
DienThoai varchar(10),
NuocSXMa varchar(20)foreign key(NuocSXMa) references NuocSX(MaNuocSX)
)

create table PhieuNhap(
MaPN varchar(20) primary key,
NgayNhapHang varchar(20),
SoLuongNhap varchar(10),
DonGia varchar(10),
NCCMa varchar(20)foreign key(NCCMa) references NhaCungCap(MaNCC),
HangMa varchar(20)foreign key (HangMa) references BanHang(MaHang),
KhoMa varchar(20)foreign key(khoMa) references Kho(MaKho)
)
--drop table PhieuNhap
create table NguoiDung(
username nvarchar(50),
password varchar(20)
)
insert into LoaiHang(MaLoaiHang,TenLoaiHang)values('LH0001',N'Cam Vinh'),
                                                  ('LH0002',N'Nho Mĩ'),
												  ('LH0003',N'Nho Đà Lạt'),
												  ('LH0004',N'Nho Đen không hạt'),
												  ('LH0005',N'Cam ruột đỏ'),
												  ('LH0006',N'Thăng Long trắng'),
												  ('LH0007',N'Thăng Long Ruột Đỏ'),
												  ('LH0008',N'Măng Cụt'),
												  ('LH0009',N'Bưởi Da Xanh'),
												  ('LH0010',N'Xoài'),
												  ('LH0011',N'Dâu Tây Đà Lạt'),
												  ('LH0012',N'Kiwi'),
												  ('LH0013',N'Táo Đỏ'),
												  ('LH0014',N'Táo Xanh'),
												  ('LH0015',N'Hồng'),
												  ('LH0016',N'Lê Vàng')
insert into Kho(MaKho,TenKho,DiaChi,DienThoai,TenThuKho)values('MK0001',N'Kho Số Một',N'Hà Nội','042580335',N'Trịnh Thị Chi'),
                                                              ('MK0002',N'Kho Số Hai',N'Đà Lạt','021589660',N'Lê Quang Mạnh'),
															  ('MK0003',N'Kho Số Ba',N'Tây Nguyên','086533300',N'Trần Văn Nam'),
															  ('MK0004',N'Kho Số Bốn',N'Nam Định','0350387411',N'Nguyễn Thị Lan'),
															  ('MK0005',N'Kho Số Năm',N'Nghệ An','024530001',N'Phạm Thị Hồng'),
															  ('MK0006',N'Kho Số Sáu',N'Cà Mau','01358999',N'Bùi Văn Quang')
insert into NuocSX(MaNuocSX,NuocSX)values('NSX0001',N'Việt Nam'),
                                         ('NSX0002',N'Mi'),
										 ('NSX0003',N'Hàn Quốc'),
										 ('NSX0004',N'Nhật Bản'),
										 ('NSX0005',N'Autralia'),
										 ('NSX0006',N'Trung Quốc'),
										 ('NSX0007',N'Ấn Độ')
insert into NguoiNhan(MaNguoiNhan,TenNguoiNhan,DienThoai,CMND)values('NN0001',N'Phạm Văn Bằng','0986547100','1478925230'),
                                                                    ('NN0002',N'Vũ Thu Hương','0124568001','3256480288'),
																	('NN0003',N'Lê Thị Ngoc','0986785002','587965221'),
																	('NN0004',N'Bùi Thị Hường','0987652110','879444500'),
																	('NN0005',N'Nguyễn Lan Anh','0165789011','1002332111'),
																	('NN0006',N'Trần Hồng Ngọc','0965550550','300014441'),
																	('NN0007',N'Vũ Thị Lan','0168853002','5020132222'),
																	('NN0008',N'Hà Thị Linh','0186201330','702113223'),
																	('NN0009',N'Nguyễn Hồng Vân','0965330124','555213002'),
																	('NN0010',N'Vũ Văn Nam','0124698002','1350289733'),
																	('NN0011',N'Phạm Ngọc Phương','098655321','305897005'),
																	('NN0012',N'Cấn Hồng Linh','0124302001','897556103')
insert into NhomKhachHang(MaNhomKH,TenNhomKH)values('NKH0001',N'Khách Mua Với Số Lượng Lớn'),
                                                   ('NKH0002',N'Khách Hàng Thường Xuyên'),
												   ('NKH0003',N'Khách Hàng Mới')
insert into KhachHang(MaKH,TenKH,DiaChi,DienThoai,NhomKHMa)values('KH0001',N'Phạm Văn Bằng',N'Số 5 Giang Văn Minh-HN','0986547100','NKH0001'),
                                                                 ('KH0002',N'Vũ Thu Hương',N'số 25 Đội Cấn-Hà Nội','0124568001','NKH0002'),
																 ('KH0003',N'Lê Thị Ngoc',N'số 125 Giải Phóng-Hà Nội','0986785002','NKH0002'),
																 ('KH0004',N'Bùi Thị Hường',N'số 1 Hoa Lư-Hai Bà Trưng-Hà Nội','0987652110','NKH0002'),
																 ('KH0005',N'Nguyễn Lan Anh',N'số 23 Hoàng Mai-Hà Nội','0165789011','NKH0001'),
																 ('KH0006',N'Trần Hồng Ngọc',N'số 3 Hàng Đồng-Nam Định','0965550550','NKH0001'),
																 ('KH0007',N'Vũ Thị Lan',N'số 10-Lê Văn Hưu-Nam Định','0168853002','NKH0003'),
																 ('KH0008',N'Hà Thị Linh',N'số 85 Cầu Giấy-Hà Nội','0186201330','NKH0003'),
																 ('KH0009',N'Nguyễn Hồng Vân','Số 10 Xuân Thủy-Cầu Giấy-HN','0965330124','NKH0003'),
																 ('KH0010',N'Vũ Văn Nam',N'số 96 Lê Văn Lương-Ha Nội','0124698002','NKH0003'),
																 ('KH0011',N'Phạm Ngọc Phương',N'số 25 Lò Đúc-Hà Nội','098655321','NKH0001'),
																 ('KH0012',N'Cấn Hồng Linh',N'số 39 Đê La Thành-Hà Nội','0124302001','NKH0003')
insert into PhieuXuat(MaPX,NgayXuat,LyDo,NguoiNhanMa,KhoMa,KHMa,DonGia,SoLuongXuat)values('PX0001','2017-01-02',NULL,'NN0001','MK0001','KH0001','55.5vnd','95kg'),
                                                                      ('PX0002','2017-01-05',NULL,'NN0002','MK0002','KH0002','140.5vnd','149kg'),
																	  ('PX0003','2017-01-06',NULL,'NN0003','MK0003','KH0003','195.5vnd','198kg'),
																	  ('PX0004','2017-01-12',NULL,'NN0004','MK0004','KH0004','225.6vnd','100kg'),
																	  ('PX0005','2017-01-15',NULL,'NN0005','MK0005','KH0005','90.5vnd','147kg'),
																	  ('PX0006','2017-02-02',NULL,'NN0006','MK0006','KH0006','75.2vnd','142kg'),
																	  ('PX0007','2017-02-08',NULL,'NN0007','MK0001','KH0007','65.7vnd','95kg'),
																	  ('PX0008','2017-02-13',NULL,'NN0008','MK0003','KH0008','145.5vnd','97kg'),
																	  ('PX0009','2017-02-25',NULL,'NN0009','MK0005','KH0009','45.6vnd','93qua'),
																	  ('PX0010','2017-03-05',NULL,'NN0010','MK0002','KH0010','85.7vnd','95kg'),
																	  ('PX0011','2017-03-21',NULL,'NN0011','MK0006','KH0011','135.6vnd','100kg'),
																	  ('PX0012','2017-03-16',NULL,'NN0012','MK0004','KH0012','238.5vnd','200kg')
insert into BanHang(MaHang,TenHang,KichThuoc,DonViTinh,Ton,LoaiHangMa,KhoMa,PhieuXuatMa,NuocSXMa)
values('MH0001',N'Cam Vinh','3 quả/kg','Kilogam','5Kg','LH0001','MK0001','PX0001','NSX0001'),
      ('MH0002',N'Nho Mĩ','3 chùm/kg','Kilogam','1Kg','LH0002','MK0002','PX0005','NSX0002'),
	  ('MH0003',N'Nho Đà Lạt','2 chùm/kg','Kilogam','2Kg','LH0003','MK0003','PX0008','NSX0001'),
	  ('MH0004',N'Nho Đen không hạt','2 chùm/kg','Kilogam',N'Hết hàng','LH0004','MK0004','PX0003','NSX0002'),
	  ('MH0005',N'Cam ruột đỏ','4 quả/kg','Kilogam','3Kg','LH0005','MK0005','PX0009','NSX0003'),
	  ('MH0006',N'Thăng Long trắng','3 quả/kg','Kilogam','8Kg','LH0006','MK0006','PX0002','NSX0003'),
	  ('MH0007',N'Thăng Long Ruột Đỏ','2 quả/kg','Kilogam','5Kg','LH0007','MK0001','PX0006','NSX0004'),
	  ('MH0008',N'Măng Cụt','12 quả/kg','Kilogam','3Kg','LH0001','MK0003','PX0008','NSX0005'),
	  ('MH0009',N'Bưởi Da Xanh',N'loại vừa',N'quả',N'7 quả','LH0009','MK0005','PX0004','NSX0001'),
	  ('MH0010',N'Xoài','4 quả/kg','Kilogam','5Kg','LH0010','MK0002','PX0010','NSX0006'),
	  ('MH0011',N'Dâu Tây Đà Lạt','25 quả/kg','Kilogam',N'Hết Hàng','LH0011','MK0006','PX0012','NSX0001'),
	  ('MH0012',N'Kiwi','25 quả/kg','Kilogam',N'Hết Hàng','LH0012','MK0004','PX0011','NSX0007')
insert into NhaCungCap(MaNCC,TenNCC,DiaChi,DienThoai,NuocSXMa)values('NCC0001',N'Xuất Khẩu Việt',N'Hồ Chí Minh','082456001','NSX0001'),
                                                                    ('NCC0002',N'Xuất Khẩu Mĩ',N'New York','145556330','NSX0002'),
																	('NCC0003',N'Xuất Khẩu Hàn Quốc',N'KangNam','250503303','NSX0003'),
																	('NCC0004',N'Xuất Khẩu Nhật Bản',N'ToKyo','120699988','NSX0004'),
																	('NCC0005',N'Xuất Austraylia ',N'Sydney','031119999','NSX0005'),
																	('NCC0006',N'Xuất Khẩu Trung Quốc',N'Bắc Kinh','144665559','NSX0006'),
																	('NCC0007',N'Xuất Khẩu Ấn Độ',N'Ahmedabad','477669888','NSX0007')
insert into PhieuNhap(MaPN,NgayNhapHang,NCCMa,KhoMa,DonGia,SoLuongNhap,HangMa)values('PN0001','2017-01-01','NCC0001','MK0001','45.5vnd','100kg','MH0001'),
                                                      ('PN0002','2017-01-08','NCC0002','MK0001','120.8vnd','150kg','MH0002'),
													  ('PN0003','2017-01-16','NCC0003','MK0002','185.3vnd','200kg','MH0003'),
													  ('PN0004','2017-01-24','NCC0004','MK0003','210.6vnd','100kg','MH0004'),
													  ('PN0005','2017-02-01','NCC0006','MK0004','75.9vnd','150kg','MH0005'),
													  ('PN0006','2017-02-08','NCC0001','MK0006','68.2vnd','150kg','MH0006'),
													  ('PN0007','2017-02-16','NCC0005','MK0005','56.7vnd','100kg','MH0007'),
													  ('PN0008','2017-02-24','NCC0007','MK0002','130.5vnd','100kg','MH0008'),
													  ('PN0009','2017-03-01','NCC0001','MK0006','42.8vnd','100qua','MH0009'),
													  ('PN0010','2017-03-08','NCC0003','MK0003','75.7vnd','100kg','MH0010'),
													  ('PN0011','2017-03-16','NCC0005','MK0004','130.6vnd','100kg','MH0011'),
													  ('PN0012','2017-03-24','NCC0002','MK0005','225.5vnd','200kg','MH0012')
insert into NguoiDung(username,password)values('ND0001','PASS0001'),
                                              ('ND0002','PASS0002'),
											  ('ND0003','PASS0003'),
											  ('ND0004','PASS0004'),
											  ('ND0005','PASS0005')

