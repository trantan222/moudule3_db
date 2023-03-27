create database quan_li_ki_tuc_xa;
use quan_li_ki_tuc_xa;
create table sinh_vien(
	ms_sv int auto_increment primary key,
    ho_ten varchar(45),
    gioi_tinh bit(1),
    ngay_sinh date,
    noi_sinh varchar(45),
    sdt varchar(45),
    ma_phong int, 
    ma_hd int,
    ma_truong int,
    ma_h_dong int,
    foreign key (ma_phong) references phong(ma_phong),
    foreign key (ma_hd) references hoa_don(ma_hd),
    foreign key (ma_truong) references truong(ma_truong),
    foreign key (ma_h_dong) references hoat_dong(ma_h_dong)
);
create table nhan_vien(
	ms_nv int auto_increment primary key,
    ho_ten varchar(45),
    gioi_tinh bit(1),
    dia_chi varchar(45),
    sdt varchar(45)
);
create table chuc_vu(
	ma_cv int auto_increment primary key,
    ten_cv varchar(45),
    ms_nv int,
	foreign key (ms_nv) references nhan_vien(ms_nv)
);
create table phong(
	ma_phong int auto_increment primary key,
    ten_phong varchar(45),
    tr_phong varchar(45)
);
create table hoa_don(
	ma_hd int auto_increment primary key,
    ma_phg varchar(45),
    thanh_tien double
);
create table truong(
	ma_truong int auto_increment primary key,
    ten_truong varchar(45),
    dia_chi varchar(45)
);
create table hoat_dong(
	ma_h_dong int auto_increment primary key,
    ten_hd varchar(45),
    tgt_chuc varchar(45)
);
create table hop_dong(
	ma_so_hop_dong int auto_increment primary key,
    thoi_gian_bat_dau date,
    thoi_gian_ket_thuc date,
	ms_sv int,
    ms_nv int,
	foreign key (ms_sv) references sinh_vien(ms_sv),
    foreign key (ms_nv) references nhan_vien(ms_nv)
    
);
create table than_nhan(
	ms_sv int auto_increment primary key, 
	ten_than_nhan varchar(45),
	dia_chi varchar(45),
	quan_he varchar(45),
    foreign key (ms_sv) references sinh_vien(ms_sv)
);

