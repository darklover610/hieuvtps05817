-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-04-07 06:43:37.921

-- tables
-- Table: ChiTietHoaDon
CREATE TABLE ChiTietHoaDon (
    id_cthd int  NOT NULL,
    id_sp int  NOT NULL,
    id_hd int  NOT NULL,
    sl int  NOT NULL,
    CONSTRAINT ChiTietHoaDon_pk PRIMARY KEY  (id_cthd)
);

-- Table: Hoadon
CREATE TABLE Hoadon (
    date date  NOT NULL,
    id int  NOT NULL,
    id_hd int  NOT NULL,
    CONSTRAINT Hoadon_pk PRIMARY KEY  (id_hd)
);

-- Table: Khachhang
CREATE TABLE Khachhang (
    id int  NOT NULL,
    name nvarchar(50)  NOT NULL,
    address nvarchar(50)  NOT NULL,
    phone nvarchar(10)  NOT NULL,
    date date  NOT NULL,
    rank nvarchar(20)  NOT NULL,
    CONSTRAINT Khachhang_pk PRIMARY KEY  (id)
);

-- Table: LoaiSanPham
CREATE TABLE LoaiSanPham (
    id_l int  NOT NULL,
    type_name nvarchar(50)  NOT NULL,
    CONSTRAINT LoaiSanPham_pk PRIMARY KEY  (id_l)
);

-- Table: SanPham
CREATE TABLE SanPham (
    name_sp nvarchar(50)  NOT NULL,
    brand nvarchar(50)  NOT NULL,
    price money  NOT NULL,
    id_l int  NOT NULL,
    id_sp int  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY  (id_sp)
);

-- foreign keys
-- Reference: ChiTietHoaDon_Hoadon (table: ChiTietHoaDon)
ALTER TABLE ChiTietHoaDon ADD CONSTRAINT ChiTietHoaDon_Hoadon
    FOREIGN KEY (id_hd)
    REFERENCES Hoadon (id_hd);

-- Reference: ChiTietHoaDon_SanPham (table: ChiTietHoaDon)
ALTER TABLE ChiTietHoaDon ADD CONSTRAINT ChiTietHoaDon_SanPham
    FOREIGN KEY (id_sp)
    REFERENCES SanPham (id_sp);

-- Reference: Hoadon_Khachhang (table: Hoadon)
ALTER TABLE Hoadon ADD CONSTRAINT Hoadon_Khachhang
    FOREIGN KEY (id)
    REFERENCES Khachhang (id);

-- Reference: SanPham_LoaiSanPham (table: SanPham)
ALTER TABLE SanPham ADD CONSTRAINT SanPham_LoaiSanPham
    FOREIGN KEY (id_l)
    REFERENCES LoaiSanPham (id_l);

-- End of file.

