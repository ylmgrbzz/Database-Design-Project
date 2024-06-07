CREATE TABLE tbl_Personeller (
Pers_ID INT PRIMARY KEY,
    Pers_Adi NVARCHAR(50),
    Pers_Soyadi NVARCHAR(50),
    Pers_DTarihi DATE,
    Pers_Isim AS (Pers_Adi + ' ' + Pers_Soyadi),
    Pers_Giris_Tarihi DATE,
    Pers_Cikis_Tarihi DATE,
    Pers_Adresi NVARCHAR(255),
    Pers_Ilcesi NVARCHAR(50),
    Pers_Ili NVARCHAR(50),
    Pers_Il_Kodu NVARCHAR(10),
    Pers_Tel NVARCHAR(15),
    Pers_Cep NVARCHAR(15),
    Pers_Email NVARCHAR(50),
    Bolum_ID INT,
    Cinsiyet_ID INT,
    Unvan_ID INT,
    Pers_Maas DECIMAL(10, 2),
    Pers_Komisyon_Yuzdesi DECIMAL(5, 2),
    Pers_Foto VARBINARY(MAX),
    Pers_SGK_No NVARCHAR(20),
    Pers_TC_No NVARCHAR(11),
    Pers_CV NVARCHAR(255),
    Pers_CV_File VARBINARY(MAX),
    Pers_CV_Web NVARCHAR(255),
    Pers_Aktif_Mi BIT,
    Kaydeden NVARCHAR(50),
    Kayit_Tarihi DATETIME,
    Son_Kaydeden NVARCHAR(50),
    Son_Kayit_Tarihi DATETIME,
    FOREIGN KEY (Bolum_ID) REFERENCES tbl_Bolumler(Bolum_ID),
    FOREIGN KEY (Cinsiyet_ID) REFERENCES tbl_Kategoriler(K_ID),
    FOREIGN KEY (Unvan_ID) REFERENCES tbl_Kategoriler(K_ID)
);


CREATE TABLE tbl_Maaslar (
    Maas_ID INT PRIMARY KEY,
    Pers_ID INT,
    Maas_Tarihi DATE,
    Maas_Tutari DECIMAL(10, 2),
    Maas_Komisyonu DECIMAL(10, 2),
    Maas_Toplam AS (Maas_Tutari + Maas_Komisyonu),
    Ay_ID INT,
    Maas_Yili AS YEAR(Maas_Tarihi),
    FOREIGN KEY (Pers_ID) REFERENCES tbl_Personeller(Pers_ID),
    FOREIGN KEY (Ay_ID) REFERENCES tbl_Kategoriler(K_ID)
);

CREATE TABLE tbl_Bolumler (
    Bolum_ID INT PRIMARY KEY,
    Bolum_Adi NVARCHAR(50),
    Bolum_Tel NVARCHAR(15),
    Yonetici_ID INT
);

CREATE TABLE tbl_Kullanicilar (
    Kullanici_ID INT PRIMARY KEY,
    Kullanici_Adi NVARCHAR(50),
    Kullanici_Sifre NVARCHAR(50),
    Yetki_ID INT,
    FOREIGN KEY (Yetki_ID) REFERENCES tbl_Kategoriler(K_ID)
);


CREATE TABLE tbl_Kategoriler (
    K_ID INT PRIMARY KEY,
    Cinsiyet NVARCHAR(10),
    Unvan NVARCHAR(50),
    Ilce_Adi NVARCHAR(50),
    Il_Adi NVARCHAR(50),
    Ulke NVARCHAR(50),
    Ay_Adi NVARCHAR(20),
    Kitap_Turu NVARCHAR(50),
    Yetki_Turu NVARCHAR(50)
);
