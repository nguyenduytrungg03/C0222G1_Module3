create database quan_li_diem_thi;

use quan_li_diem_thi;
CREATE TABLE hocsinh(
ma_hs VARCHAR(20) PRIMARY KEY,
ten_hs VARCHAR(50),
ngaysinh DATETIME,
lop VARCHAR(20),
gt VARCHAR(20)
);

CREATE TABLE monhoc(
ma_mh VARCHAR(20) PRIMARY KEY,
ten_mh VARCHAR(50)
);

CREATE TABLE bangdiem(
ma_hs VARCHAR(20),	
ma_mh VARCHAR(20),
diemthi INT, 
ngaykiemtra DATETIME,
PRIMARY KEY (ma_hs,ma_mh),
FOREIGN KEY (ma_hs) REFERENCES hocsinh(ma_hs),
FOREIGN KEY (ma_mh) REFERENCES monhoc(ma_mh)
);

 CREATE TABLE giaovien(
 ma_gv VARCHAR(20) PRIMARY KEY,
 ten_gv VARCHAR(20),
 sdt VARCHAR(10)
 );
 
ALTER TABLE monhoc ADD ma_gv VARCHAR(20);
ALTER TABLE monhoc ADD CONSTRAINT FK_ma_gv FOREIGN KEY (ma_gv) REFERENCES giaovien(ma_gv);