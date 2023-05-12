create database erd2;
use erd2;
create table phieu_xuat(
	so_px int primary key,
    ngay_xuat date
);
create table vat_tu(
	ma_VTU varchar(255) primary key,
    ten_VTU varchar(255)
);
create table chi_tiet_phieu_xuat(
	so_px int,
    ma_VTU varchar(255),
	dg_xuat varchar(255),
    SL_xuat int,
    primary key(so_px,ma_VTU),
    foreign key (so_px) references phieu_xuat(so_px),
    foreign key (ma_VTU) references vat_tu(ma_VTU)
);
create table phieu_nhap (
	so_pn int primary key,
    ngay_nhap varchar(255)
);
create table chi_tiet_phieu_nhap(
	ma_VTU varchar(255),
    so_pn int,
	dg_nhap varchar(255),
    SL_nhap int,
    primary key(so_pn,ma_VTU),
    foreign key (ma_VTU) references vat_tu(ma_VTU),
    foreign key(so_pn) references phieu_nhap(so_pn)
);
create table nha_cung_cap(
	ma_ncc varchar(255) primary key,
    ten_ncc varchar(255),
    dia_chi varchar(255)
);
create table Don_DH(
	ma_ncc varchar(255),
	so_dh int primary key,
    ngay_don_hang date,
    foreign key (ma_ncc) references nha_cung_cap(ma_ncc)
);	
create table chi_tiet_don_dat_hang(
	so_dh int,
	ma_VTU varchar(255),
    primary key(so_dh,ma_VTU),
    foreign key (so_dh) references Don_DH(so_dh),
    foreign key (ma_VTU) references vat_tu(ma_VTU)
);

create table sdt(
	ma_ncc varchar(255),
    ngay_cap varchar(255),
    numberr int,
    foreign key (ma_ncc) references nha_cung_cap(ma_ncc)
);

