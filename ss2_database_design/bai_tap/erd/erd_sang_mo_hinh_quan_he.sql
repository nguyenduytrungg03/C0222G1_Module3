 create database erd;
use erd;
CREATE TABLE so_dien_thoai (
    id_so_dien_thoai INT PRIMARY KEY AUTO_INCREMENT,
    so_dien_thoai VARCHAR(10),
    ma_nha_cung_cap INT,
    FOREIGN KEY (ma_nha_cung_cap) REFERENCES nha_cung_cap (ma_nha_cung_cap)
);

CREATE TABLE nha_cung_cap (
    ma_nha_cung_cap INT PRIMARY KEY AUTO_INCREMENT,
    ten_nha_cung_cap VARCHAR(40),
    dia_chi VARCHAR(50)
);

CREATE TABLE don_hang (
    so_don_hang INT PRIMARY KEY AUTO_INCREMENT,
    ngay_don_hang DATE,
    ma_nha_cung_cap INT,
    FOREIGN KEY (ma_nha_cung_cap) REFERENCES nha_cung_cap (ma_nha_cung_cap)
);

CREATE TABLE vat_tu (
    ma_vat_tu INT PRIMARY KEY AUTO_INCREMENT,
    ten_vat_tu VARCHAR(20)
);

CREATE TABLE chi_tiet_don_dat_hang (
    ma_vat_tu INT,
    so_don_hang INT,
    PRIMARY KEY (ma_vat_tu , so_don_hang),
    FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_don_hang) REFERENCES don_hang (so_don_hang)
);

CREATE TABLE phieu_xuat (
    so_phieu_xuat INT PRIMARY KEY AUTO_INCREMENT,
    ngay_xuat DATE
);

CREATE TABLE phieu_nhap (
    so_phieu_nhap INT PRIMARY KEY AUTO_INCREMENT,
    ngay_nhap DATE
);	

CREATE TABLE chi_tiet_phieu_nhap (
    don_gia_nhap DOUBLE,
    so_luong_nhap INT,
    ma_vat_tu INT,
    so_phieu_nhap INT,
    PRIMARY KEY (ma_vat_tu , so_phieu_nhap),
    FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_phieu_nhap) REFERENCES phieu_nhap (so_phieu_nhap)
);

CREATE TABLE chi_tiet_phieu_xuat (
    don_gia_xuat DOUBLE,
    so_luong_xuat INT,
    so_phieu_xuat INT,
    ma_vat_tu INT,
    PRIMARY KEY (ma_vat_tu , so_phieu_xuat),
    FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_phieu_xuat) REFERENCES phieu_xuat (so_phieu_xuat)
);
 