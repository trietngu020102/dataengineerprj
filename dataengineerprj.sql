create database pes_nghien
use pes_nghien

create table Tro_choi
(Ma_tro_choi varchar(50) primary key
, Gia_tro_choi integer
, Trang_thai_cap_nhat varchar(50)
, The_loai varchar(50))

create table Do_an_uong
(Ma_san_pham varchar(50) primary key
, Ten_san_pham varchar(50)
, Gia_san_pham integer
, Gia_nhap decimal
, So_luong_nhap integer
, So_luong_ton integer)

create table Khach_hang
(Ma_khach_hang varchar(50) primary key
, Ten_khach_hang varchar(50)
, Trang_thai varchar(50)
, Ten_tai_khoan varchar(50)
, So_dien_thoai integer
, Goi_san_pham varchar(50))

create table Thanh_toan
(Ma_thanh_toan varchar(50) primary key
, Phuong_thuc_thanh_toan varchar(50)
, Trang_thai_giao_dich varchar(50)
, Kenh_thanh_toan varchar(50))

CREATE TABLE Don_hang
(Ma_don_hang varchar(50) PRIMARY KEY
, Ma_khach_hang varchar(50) 
, Ma_tro_choi varchar(50) 
, Ngay_choi date
, Gio_bat_dau datetime
, Gio_ket_thuc datetime 
, Ma_do_an varchar(50) 
, So_luong_do_an integer
, Ma_thanh_toan varchar(50))

alter table don_hang add constraint fk_khachhang_donhang foreign key (ma_khach_hang) references khach_hang(ma_khach_hang);
alter table don_hang add constraint fk_trochoi_donhang foreign key (ma_tro_choi) references tro_choi(ma_tro_choi);
alter table don_hang add constraint fk_thanhtoan_donhang foreign key (ma_thanh_toan) references Thanh_toan(ma_thanh_toan);
alter table don_hang add constraint fk_doan_donhang foreign key (ma_do_an) references khach_hang(ma_san_pham);

