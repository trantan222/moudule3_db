create database case_study_furama_resort;
use  case_study_furama_resort;
 CREATE TABLE vi_tri (
ma_vi_tri INT PRIMARY KEY AUTO_INCREMENT,
ten_vi_tri VARCHAR(45)
);

CREATE TABLE trinh_do (
ma_trinh_do INT PRIMARY KEY AUTO_INCREMENT,
ten_trinh_do VARCHAR(45)
);

CREATE TABLE bo_phan (
ma_bo_phan INT PRIMARY KEY AUTO_INCREMENT,
ten_bo_phan VARCHAR(45)
);

CREATE TABLE nhan_vien (
ma_nhan_vien INT PRIMARY KEY AUTO_INCREMENT,
ho_ten VARCHAR(45),
ngay_sinh DATE,
so_cmnd VARCHAR(45),
luong DOUBLE,
so_dien_thoai VARCHAR(45),
email VARCHAR(45),
dia_chi VARCHAR(45),
ma_vi_tri INT,
ma_trinh_do INT,
ma_bo_phan INT,
FOREIGN KEY (ma_vi_tri) REFERENCES vi_tri(ma_vi_tri),
FOREIGN KEY (ma_trinh_do) REFERENCES trinh_do(ma_trinh_do),
FOREIGN KEY (ma_bo_phan) REFERENCES bo_phan(ma_bo_phan)
);

CREATE TABLE loai_khach (
ma_loai_khach INT PRIMARY KEY AUTO_INCREMENT,
ten_loai_khach VARCHAR(45)
);

CREATE TABLE khach_hang (
ma_khach_hang INT PRIMARY KEY AUTO_INCREMENT,
ma_loai_khach INT,
ho_ten VARCHAR(45),
ngay_sinh DATE,
gioi_tinh BIT(1),
so_cmnd VARCHAR(45),
so_dien_thoai VARCHAR(45),
email VARCHAR(45),
dia_chi VARCHAR(45),
FOREIGN KEY (ma_loai_khach) REFERENCES loai_khach(ma_loai_khach)
);

CREATE TABLE kieu_thue (
ma_kieu_thue INT PRIMARY KEY AUTO_INCREMENT,
ten_kieu_thue VARCHAR(45)
);

CREATE TABLE loai_dich_vu (
ma_loai_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
ten_loai_dich_vu VARCHAR(45)
);

CREATE TABLE dich_vu (
ma_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
ten_dich_vu VARCHAR(45),
dien_tich INT,
chi_phi_thue DOUBLE,
so_nguoi_toi_da INT,
ma_kieu_thue INT,
ma_loai_dich_vu INT,
tieu_chuan_phong VARCHAR(45),
mo_ta_tien_nghi_khac VARCHAR(45),
dien_tich_ho_boi DOUBLE,
so_tang INT,
FOREIGN KEY (ma_kieu_thue) REFERENCES kieu_thue(ma_kieu_thue),
FOREIGN KEY (ma_loai_dich_vu) REFERENCES loai_dich_vu(ma_loai_dich_vu)
);

CREATE TABLE dich_vu_di_kem (
ma_dich_vu_di_kem INT PRIMARY KEY AUTO_INCREMENT,
ten_dich_vu_di_kem VARCHAR(45),
gia DOUBLE,
don_vi VARCHAR(10),
trang_thai VARCHAR(45)
);

CREATE TABLE hop_dong (
ma_hop_dong INT PRIMARY KEY AUTO_INCREMENT,
ngay_lam_hop_dong DATETIME,
ngay_ket_thuc DATETIME,
tien_dat_coc DOUBLE,
ma_nhan_vien INT,
ma_khach_hang INT,
ma_dich_vu INT,
FOREIGN KEY (ma_nhan_vien) REFERENCES nhan_vien(ma_nhan_vien),
FOREIGN KEY (ma_khach_hang) REFERENCES khach_hang(ma_khach_hang),
FOREIGN KEY (ma_dich_vu) REFERENCES dich_vu(ma_dich_vu)
);

CREATE TABLE hop_dong_chi_tiet (
ma_hop_dong_chi_tiet INT PRIMARY KEY AUTO_INCREMENT,
ma_hop_dong INT,
ma_dich_vu_di_kem INT,
so_luong INT,
FOREIGN KEY (ma_hop_dong) REFERENCES hop_dong(ma_hop_dong),
FOREIGN KEY (ma_dich_vu_di_kem) REFERENCES dich_vu_di_kem(ma_dich_vu_di_kem)
);

INSERT INTO vi_tri (ma_vi_tri, ten_vi_tri)
VALUE(1, 'Quản Lý'),
	 (2, 'Nhân Viên');
SELECT * FROM vi_tri;
     
INSERT INTO trinh_do (ma_trinh_do, ten_trinh_do)
VALUE(1, 'Trung Cấp'),
     (2, 'Cao Đẳng'),
     (3, 'Đại Học'),
     (4, 'Sau Đại Học');
SELECT * FROM trinh_do;
     
INSERT INTO bo_phan (ma_bo_phan, ten_bo_phan)
VALUE(1, 'Sale-Marketing'),
	 (2, 'Hành chính'),
     (3, 'Phục vụ'),
     (4, 'Quản lý');
SELECT * FROM bo_phan;
     
INSERT INTO nhan_vien
VALUE(1, 'Nguyễn Văn An', '1970-11-07',	'456231786', 10000000, '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng',	1, 3, 1),
     (2, 'Lê Văn Bình', '1997-04-09', '654231234', 7000000, '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', 1, 2, 2),
     (3, 'Hồ Thị Yến', '1995-12-12', '999231723', 14000000, '0412352315', 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', 1, 3, 2),
     (4, 'Võ Công Toản', '1980-04-04', '123231365', 17000000, '0374443232', 'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', 1, 4, 4),
     (5, 'Nguyễn Bỉnh Phát', '1999-12-09', '454363232', 6000000, '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', 2, 1, 1),
     (6, 'Khúc Nguyễn An Nghi', '2000-11-08', '964542311', 7000000, '0978653213', 'annghi20@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', 2, 2, 3),
     (7, 'Nguyễn Hữu Hà', '1993-01-01', '534323231', 8000000, '0941234553', 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', 2, 3, 2),
     (8, 'Nguyễn Hà Đông', '1989-09-03', '234414123', 9000000, '0642123111', 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', 2, 4, 4),
     (9, 'Tòng Hoang', '1982-09-03', '256781231', 6000000, '0245144444', 'hoangtong@gmail.com', '213 Hàm Nghi, Đà Nẵng', 2, 4, 4),
     (10, 'Nguyễn Công Đạo', '1994-01-08', '755434343', 8000000, '0988767111', 'nguyencongdao12@gmail.com', '6 Hoà Khánh, Đồng Nai', 2, 3, 2);
 SELECT * FROM nhan_vien;
 
INSERT INTO loai_khach (ma_loai_khach, ten_loai_khach)
VALUE(1, 'Diamond'),
     (2, 'Platinium'),
     (3, 'Gold'),
     (4, 'Silver'),
     (5, 'Member');
SELECT * FROM loai_khach;
     
INSERT INTO khach_hang
VALUE(1, 5, 'Nguyễn Thị Hào', '1970-11-07', 0, '643431213', '0945423362', 'thihao07@gmail.com', '23 Nguyễn Hoàng, Đà Nẵng'),
     (2, 3, 'Phạm Xuân Diệu', '1992-08-08', 1, '865342123', '0954333333', 'xuandieu92@gmail.com', 'K77/22 Thái Phiên, Quảng Trị'),
     (3, 1, 'Trương Đình Nghệ', '1990-02-27', 1, '488645199', '0373213122', 'nghenhan2702@gmail.com', 'K323/12 Ông Ích Khiêm, Vinh'),
     (4, 1, 'Dương Văn Quan', '1981-07-08', 1, '543432111', '0490039241', 'duongquan@gmail.com', 'K453/12 Lê Lợi, Đà Nẵng'),
     (5, 4, 'Hoàng Trần Nhi Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhi123@gmail.com', '224 Lý Thái Tổ, Gia Lai'),
     (6, 4, 'Tôn Nữ Mộc Châu', '2005-12-06', 0, '732434215', '0988888844', 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng'),
     (7, 1, 'Nguyễn Mỹ Kim', '1984-04-08', 0, '856453123', '0912345698', 'kimcuong84@gmail.com', 'K123/45 Lê Lợi, Hồ Chí Minh'),
     (8, 3, 'Nguyễn Thị Hào', '1999-04-08', 0, '965656433', '0763212345', 'haohao99@gmail.com', '55 Nguyễn Văn Linh, Kon Tum'),
     (9, 1, 'Trần Đại Danh', '1994-07-01', 1, '432341235', '0643343433', 'danhhai99@gmail.com', '24 Lý Thường Kiệt, Quảng Ngãi'),
     (10, 2, 'Nguyễn Tâm Đắc', '1989-07-01', 1, '344343432', '0987654321', 'dactam@gmail.com', '22 Ngô Quyền, Đà Nẵng');
SELECT * FROM khach_hang;
     
INSERT INTO kieu_thue (ma_kieu_thue, ten_kieu_thue)
VALUE(1, 'year'),
     (2, 'month'),
     (3, 'day'),
     (4, 'hour');
SELECT * FROM kieu_thue;
     
INSERT INTO loai_dich_vu (ma_loai_dich_vu, ten_loai_dich_vu)
VALUE(1, 'Villa'),
     (2, 'House'),
     (3, 'Room');
SELECT * FROM loai_dich_vu;
    
INSERT INTO dich_vu
VALUE(1, 'Villa Beach Front', 25000, 10000000, 10, 3, 1, 'vip', 'Có hồ bơi', 500, 4),
     (2, 'House Princess 01', 14000, 5000000, 7, 2, 2, 'vip', 'Có thêm bếp nướng', null, 3),
     (3, 'Room Twin 01', 5000, 1000000, 2, 4, 3, 'normal', 'Có tivi', null, null),
     (4, 'Villa No Beach Front', 22000, 9000000, 8, 3, 1, 'normal', 'Có hồ bơi', 300, 3),
     (5, 'House Princess 02', 10000, 4000000, 5, 3, 2, 'normal', 'Có thêm bếp nướng', null, 2),
     (6, 'Room Twin 02', 3000, 900000, 2, 4, 3, 'normal', 'Có tivi', null, null);
SELECT * FROM dich_vu;

INSERT INTO dich_vu_di_kem
VALUE(1, 'Karaoke', 10000, 'giờ', 'tiện nghi, hiện tại'),
     (2, 'Thuê xe máy', 10000, 'chiếc', 'hỏng 1 xe'),
     (3, 'Thuê xe đạp', 20000, 'chiếc', 'tốt'),
     (4, 'Buffet buổi sáng', 15000, 'suất', 'đầy đủ đồ ăn, tráng miệng'),
     (5, 'Buffet buổi trưa', 90000, 'suất', 'đầy đủ đồ ăn, tráng miệng'),
     (6, 'Buffet buổi tối', 16000, 'suất', 'đầy đủ đồ ăn, tráng miệng');
SELECT * FROM dich_vu_di_kem;
     
INSERT INTO hop_dong
VALUE(1, '2020-12-08', '2020-12-08', 0, 3, 1, 3),
     (2, '2020-07-14', '2020-07-21', 200000, 7, 3, 1),
     (3, '2021-03-15', '2021-03-17', 50000, 3, 4, 2),
     (4, '2021-01-14', '2021-01-18', 100000, 7, 5, 5),
     (5, '2021-07-14', '2021-07-15', 0, 7, 2, 6),
     (6, '2021-06-01', '2021-06-03', 0, 7, 7, 6),
     (7, '2021-09-02', '2021-09-05', 100000, 7, 4, 4),
     (8, '2021-06-17', '2021-06-18', 150000, 3, 4, 1),
     (9, '2020-11-19', '2020-11-19', 0, 3, 4, 3),
     (10, '2021-04-12', '2021-04-14', 0, 10, 3, 5),
     (11, '2021-04-25', '2021-04-25', 0, 2, 2, 1),
     (12, '2021-05-25', '2021-05-27', 0, 7, 10, 1);
SELECT * FROM hop_dong;
     
INSERT INTO hop_dong_chi_tiet
VALUE(1,  2, 4, 5),
     (2, 2, 5, 8),
     (3, 2, 6, 15),
     (4, 3, 1, 1),
     (5, 3, 2, 11),
     (6, 1, 3, 1),
     (7, 1, 2, 2),
     (8, 12, 2, 2);
SELECT * FROM hop_dong_chi_tiet;         
        
-- cau 2 :
select ma_nhan_vien,ho_ten
from nhan_vien	
where (ho_ten like 'H%' or ho_ten like 'K%' or ho_ten like 'T%') and char_length(ho_ten) <=15 ;

-- cau 3 
 select *
 from khach_hang
 where ( (year(curdate()) - year(ngay_sinh)) > 18 and  (year(curdate()) - year(ngay_sinh)) <= 50 ) 
 and dia_chi like '%Đà Nẵng' or dia_chi like '%Quảng Trị';
 
-- câu 4
select khach_hang.ma_khach_hang,khach_hang.ho_ten ,ten_loai_khach,(khach_hang.ma_khach_hang) as so_luong
from khach_hang
join loai_khach on loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
join hop_dong on hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
group by khach_hang.ma_khach_hang
having ten_loai_khach = 'Diamond'
order by so_luong;
 
 -- cau 5
 SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
 select k.ma_khach_hang,k.ho_ten,lk.ten_loai_khach,hd.ma_hop_dong,dv.ten_dich_vu,hd.ngay_lam_hop_dong,
 hd.ngay_ket_thuc, sum(ifnull(dv.chi_phi_thue,0) + ifnull(hd2.so_luong,0) *ifnull(dv2.gia,0)) as tong
 from khach_hang k 
 left join loai_khach lk on lk.ma_loai_khach = k.ma_loai_khach
 left join hop_dong hd on hd.ma_khach_hang = k.ma_khach_hang
 left join hop_dong_chi_tiet hd2 on hd.ma_hop_dong = hd2.ma_hop_dong
 left join dich_vu  dv on hd.ma_dich_vu =dv.ma_dich_vu 
 left join dich_vu_di_kem dv2 on hd2.ma_dich_vu_di_kem = dv2.ma_dich_vu_di_kem
 group by hd.ma_hop_dong;
 
 -- cau 6 
select dv.ma_dich_vu,dv.ten_dich_vu, dv.dien_tich,dv.chi_phi_thue, ldv.ten_loai_dich_vu,
month(hd.ngay_lam_hop_dong) as thang,year(hd.ngay_lam_hop_dong) as nam
from dich_vu dv 
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
where hd.ma_dich_vu not in (select hd1.ma_dich_vu from dich_vu dv1 join hop_dong hd1 where quarter(hd1.ngay_lam_hop_dong) = 1 and 
year(hd1.ngay_lam_hop_dong) = 2021)
group by dv.ma_dich_vu;
 
 -- cau 7
select dv.ma_dich_vu,dv.ten_dich_vu, dv.dien_tich,dv.so_nguoi_toi_da,dv.chi_phi_thue,ldv.ten_loai_dich_vu
from dich_vu dv 
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
where year(hd.ngay_lam_hop_dong) = 2020 and dv.ma_dich_vu not in 
(select dv1.ma_dich_vu from dich_vu dv1 join hop_dong hd1 on dv1.ma_dich_vu= hd1.ma_dich_vu 
where year(hd1.ngay_lam_hop_dong) = 2021 )
group by dv.ma_dich_vu;

-- cau 8 
select distinct ho_ten
from khach_hang ;

-- cau 9
select month(hd.ngay_lam_hop_dong) as thang, count(hd.ngay_lam_hop_dong) as so_luong_dat
from hop_dong hd 
join khach_hang  kh on hd.ma_khach_hang = kh.ma_khach_hang
where year(hd.ngay_lam_hop_dong) = 2021
group by thang
 order by thang;
 
 -- cau 10 
 select hd.ma_hop_dong, hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,hd.tien_dat_coc, sum(ifnull(so_luong,0)) as so_luong_dich_vu_di_kem
 from hop_dong hd
 left join hop_dong_chi_tiet hd2 on hd.ma_hop_dong = hd2.ma_hop_dong 
 left join dich_vu_di_kem dv2 on hd2.ma_dich_vu_di_kem = dv2.ma_dich_vu_di_kem
 group by hd.ma_hop_dong;
 
 -- cau 11
 select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
 from dich_vu_di_kem dvdk 
 join hop_dong_chi_tiet hd2 on dvdk.ma_dich_vu_di_kem = hd2.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hd2.ma_hop_dong
join khach_hang k on k.ma_khach_hang = hd.ma_khach_hang 
join loai_khach lk on k.ma_loai_khach = lk.ma_loai_khach 
where k.dia_chi like '% Vinh' or  k.dia_chi like ' % Quảng Ngãi' and lk.ten_loai_khach = 'Diamond' ;
 
 -- cau 12
	 select hd.ma_hop_dong,nv.ho_ten,kh.ho_ten,kh.so_dien_thoai,sum(ifnull(so_luong,0)) as so_luong,
	 hd.tien_dat_coc 
	 from hop_dong hd 
	 join nhan_vien nv on hd.ma_nhan_vien = nv.ma_nhan_vien 
	 join khach_hang kh on hd.ma_khach_hang = kh.ma_khach_hang
	 join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
	 join hop_dong_chi_tiet hd2 on hd.ma_hop_dong = hd2.ma_hop_dong
	 join dich_vu_di_kem dvdk on hd2.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
	 where month(hd.ngay_lam_hop_dong) between '1/10/2020' and '31/12/2020' and 
	 dv.ma_dich_vu not in (select dv1.ma_dich_vu from dich_vu dv1 join hop_dong hd1 on hd1.ma_dich_vu = dv1.ma_dich_vu 
     where year(hd1.ngay_lam_hop_dong ) = '2021' and month(hd1.ngay_lam_hop_dong)  between 0 and 7 )
	 group by hd.ma_hop_dong;
     
   -- cau 13 
   select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, sum(hd2.so_luong) as so_luong_dich_vu_di_kem
   from dich_vu_di_kem dvdk 
   join hop_dong_chi_tiet hd2 using(ma_dich_vu_di_kem) --  on dvdk.ma_dich_vu_di_kem = hd2.ma_dich_vu_di_kem;
   group by dvdk.ma_dich_vu_di_kem
   order by hd2.so_luong desc
   limit 2;
  
	-- cau 14
    select hd.ma_hop_dong , ldv.ten_loai_dich_vu,dvdk.ten_dich_vu_di_kem, count(dvdk.ma_dich_vu_di_kem) as so_luong
    from dich_vu_di_kem dvdk 
    join hop_dong_chi_tiet hd2 using(ma_dich_vu_di_kem)  -- dvdk.ma_dich_vu_di_kem = hd2.ma_dich_vu_di_kem
    join hop_dong hd using(ma_hop_dong) -- hd.ma_hop_dong = hd2.ma_hop_dong
    join dich_vu dv using(ma_dich_vu)
    join loai_dich_vu ldv using (ma_loai_dich_vu)
    group by dvdk.ma_dich_vu_di_kem
    having count(dvdk.ma_dich_vu_di_kem) = 1;

	-- cau 15 
    select nv.ma_nhan_vien,nv.ho_ten,td.ten_trinh_do,bp.ten_bo_phan,nv.so_dien_thoai,nv.dia_chi 
    from nhan_vien nv
    join trinh_do td using(ma_trinh_do)
    join bo_phan bp using (ma_bo_phan)
    join hop_dong hd using(ma_nhan_vien)
	group by nv.ma_nhan_vien 
    having count(nv.ma_nhan_vien) <=3;

	-- cau 16
     delete--  select * 
    from nhan_vien
    where nhan_vien.ma_nhan_vien not in (select nv.ma_nhan_vien from nhan_vien nv join hop_dong hd using(ma_nhan_vien)
    where year(hd.ngay_lam_hop_dong) between '2018' and '2022' );
 
	-- cau 17 
    
    update khach_hang
    set ma_loai_khach = 1
	where khach_hang.ma_khach_hang =
    (select t.ma_khach_hang from
    (
     select kh.ma_khach_hang
    from khach_hang kh
    join loai_khach lk using(ma_loai_khach)
    join hop_dong hd using(ma_khach_hang)
    join dich_vu dv using(ma_dich_vu)
    join hop_dong_chi_tiet hd2 using(ma_hop_dong)
    join dich_vu_di_kem dvdk using (ma_dich_vu_di_kem)
	where  year(hd.ngay_lam_hop_dong) = '2021' and lk.ten_loai_khach = 'Platinium' 
    group by kh.ma_khach_hang
    having sum(dv.chi_phi_thue + dvdk.gia * hd2.so_luong) > 10000000
    ) t
	);
    select kh.ma_khach_hang,kh.ho_ten,lk.ma_loai_khach,lk.ten_loai_khach
    from khach_hang kh
    join loai_khach lk using(ma_loai_khach)
    order by kh.ma_khach_hang desc
    limit 1;
    
    -- cau 18 
    delete  ma_khach_hang
    from khach_hang
    where ma_khach_hang  = 
	 (select kh.ma_khach_hang
    from khach_hang kh
    join hop_dong hd using(ma_khach_hang)
    where year(hd.ngay_lam_hop_dong) < '2021' );
    
    -- cau 19 
    update dich_vu_di_kem dvdk
    set gia = gia * 2
    where dvdk.ma_dich_vu_di_kem = 
    (select t.ma_dich_vu_di_kem
    from (
    select dvdk1.ma_dich_vu_di_kem-- ,dvdk1.ten_dich_vu_di_kem
    from dich_vu_di_kem dvdk1
    join hop_dong_chi_tiet hd2 using (ma_dich_vu_di_kem)
    join hop_dong hd using(ma_hop_dong)
    where hd2.so_luong > 10 and year(hd.ngay_lam_hop_dong) = 2020 
    )t
    );
    
    -- cau 20 
    select kh.ma_khach_hang,kh.ho_ten,kh.email,kh.so_dien_thoai,kh.ngay_sinh,kh.dia_chi
    from khach_hang kh
    union all 
    select  nv.ma_nhan_vien,nv.ho_ten,nv.email,nv.so_dien_thoai,nv.ngay_sinh,nv.dia_chi
    from nhan_vien nv
    
 