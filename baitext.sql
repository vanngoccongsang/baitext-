--DE4
create database QLbenhvien1

use QLbenhvien1

create table BenhVien(
MaBV char(5) primary key,
TenBV varchar(40),
)

create table KhoaKham(
MaKhoa char(5) primary key,
TenKhoa varchar(40),
SoBenhNhan varchar(20),
MaBV char(5),
constraint fk_mabv_KhoaKham foreign key(MaBV) references BenhVien(MaBV) on delete cascade,
)

create table BenhNhan(
MaBN char(10) primary key,
HoTen varchar(30),
NgaySinh smalldatetime,
GioiTinh bit,
SoNgayNV varchar(20),
MaKhoa char(5),
constraint fk_makhoa_BenhNhan foreign key(MaKhoa) references KhoaKham(MaKhoa) on delete cascade,
)
--tblbenhvien
INSERT INTO BenhVien(MaBV,TenBV) VALUES('BV01',N'BV Đà Lạt')
INSERT INTO BenhVien(MaBV,TenBV) VALUES('BV02',N'BV Long An')
--tblKhoakham
INSERT INTO KhoaKham(MaKhoa,TenKhoa,SoBenhNhan,MaBV) VALUES('KH01',N'Khoa tai mui hong','7','BV01')
INSERT INTO KhoaKham(MaKhoa,TenKhoa,SoBenhNhan,MaBV) VALUES('KH02',N'Khoa mat','7','BV02')
--tblBenhnhan
INSERT INTO BenhNhan(MaBN,HoTen,NgaySinh,GioiTinh,SoNgayNV,MaKhoa) VALUES('BN01',N'Nguyen Van A','2002/10/10','0','4','KH01')
INSERT INTO BenhNhan(MaBN,HoTen,NgaySinh,GioiTinh,SoNgayNV,MaKhoa) VALUES('BN02',N'Nguyen Van B','2002/09/19','-1','3','KH02')
INSERT INTO BenhNhan(MaBN,HoTen,NgaySinh,GioiTinh,SoNgayNV,MaKhoa) VALUES('BN03',N'Nguyen Van c','2006/05/11','-1','1','KH01')
INSERT INTO BenhNhan(MaBN,HoTen,NgaySinh,GioiTinh,SoNgayNV,MaKhoa) VALUES('BN04',N'Nguyen Van d','2005/06/17','0','5','KH02')
INSERT INTO BenhNhan(MaBN,HoTen,NgaySinh,GioiTinh,SoNgayNV,MaKhoa) VALUES('BN05',N'Nguyen Van e','2004/07/16','0','6','KH02')
INSERT INTO BenhNhan(MaBN,HoTen,NgaySinh,GioiTinh,SoNgayNV,MaKhoa) VALUES('BN06',N'Nguyen Van f','2003/08/13','0','2','KH01')
INSERT INTO BenhNhan(MaBN,HoTen,NgaySinh,GioiTinh,SoNgayNV,MaKhoa) VALUES('BN07',N'Nguyen Van g','2001/01/12','-1','3','KH02')


select case BenhNhan when 'False' then N'Nam' when 'True' then N'Nữ' end as gioiTinh


--cau 3
select Makhoa,SoNgayNV*80000 as 'tien'
from BenhNhan

--cau 2
select dbo.KhoaKham.MaKhoa, dbo.KhoaKham.TenKhoa,dbo.KhoaKham.SoBenhNhan,dbo.BenhNhan.GioiTinh
from 


