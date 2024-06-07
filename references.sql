ALTER TABLE tbl_Personeller 
ADD CONSTRAINT FK_Personeller_Bolumler FOREIGN KEY (Bolum_ID) REFERENCES tbl_Bolumler(Bolum_ID);

ALTER TABLE tbl_Personeller 
ADD CONSTRAINT FK_Personeller_Cinsiyet FOREIGN KEY (Cinsiyet_ID) REFERENCES tbl_Kategoriler(K_ID);

ALTER TABLE tbl_Personeller 
ADD CONSTRAINT FK_Personeller_Unvan FOREIGN KEY (Unvan_ID) REFERENCES tbl_Kategoriler(K_ID);

ALTER TABLE tbl_Maaslar 
ADD CONSTRAINT FK_Maaslar_Personeller FOREIGN KEY (Pers_ID) REFERENCES tbl_Personeller(Pers_ID);

ALTER TABLE tbl_Maaslar 
ADD CONSTRAINT FK_Maaslar_Ay FOREIGN KEY (Ay_ID) REFERENCES tbl_Kategoriler(K_ID);

ALTER TABLE tbl_Kullanicilar 
ADD CONSTRAINT FK_Kullanicilar_Yetki FOREIGN KEY (Yetki_ID) REFERENCES tbl_Kategoriler(K_ID);

ALTER TABLE tbl_Personeller
ADD CONSTRAINT DF_Pers_Aktif_Mi DEFAULT 1 FOR Pers_Aktif_Mi;

ALTER TABLE tbl_Personeller
ADD CONSTRAINT DF_Kayit_Tarihi DEFAULT GETDATE() FOR Kayit_Tarihi;

ALTER TABLE tbl_Personeller
ADD CONSTRAINT DF_Son_Kayit_Tarihi DEFAULT GETDATE() FOR Son_Kayit_Tarihi;

ALTER TABLE tbl_Maaslar
ADD CONSTRAINT DF_Maas_Tarihi DEFAULT GETDATE() FOR Maas_Tarihi;

ALTER TABLE tbl_Kullanicilar
ADD CONSTRAINT DF_Kullanici_Sifre DEFAULT 'defaultpassword' FOR Kullanici_Sifre;
