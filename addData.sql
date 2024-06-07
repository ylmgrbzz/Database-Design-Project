INSERT INTO tbl_Kategoriler (K_ID, Cinsiyet, Unvan, Ilce_Adi, Il_Adi, Ulke, Ay_Adi, Kitap_Turu, Yetki_Turu) VALUES
(1, 'Erkek', 'Müdür', 'Beşiktaş', 'İstanbul', 'Türkiye', 'Ocak', 'Roman', 'Admin'),
(2, 'Kadın', 'Pazarlamacı', 'Kadıköy', 'İstanbul', 'Türkiye', 'Şubat', 'Hikaye', 'Kullanıcı'),
(3, 'Erkek', 'Muhasebeci', 'Çankaya', 'Ankara', 'Türkiye', 'Mart', 'Bilim Kurgu', 'Admin'),
(4, 'Kadın', 'Mühendis', 'Buca', 'İzmir', 'Türkiye', 'Nisan', 'Tarih', 'Kullanıcı');

INSERT INTO tbl_Bolumler (Bolum_ID, Bolum_Adi, Bolum_Tel, Yonetici_ID) VALUES
(1, 'Muhasebe', '0212-1234567', 1),
(2, 'Pazarlama', '0216-1234567', 2),
(3, 'IT', '0312-1234567', 3),
(4, 'Mühendislik', '0232-1234567', 4);

INSERT INTO tbl_Personeller (Pers_ID, Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Giris_Tarihi, Pers_Cikis_Tarihi, Pers_Adresi, Pers_Ilcesi, Pers_Ili, Pers_Il_Kodu, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Cinsiyet_ID, Unvan_ID, Pers_Maas, Pers_Komisyon_Yuzdesi, Pers_Foto, Pers_SGK_No, Pers_TC_No, Pers_CV, Pers_CV_File, Pers_CV_Web, Pers_Aktif_Mi, Kaydeden, Kayit_Tarihi, Son_Kaydeden, Son_Kayit_Tarihi) VALUES
(1, 'Ahmet', 'Yılmaz', '1980-01-01', '2020-01-01', NULL, 'İstiklal Cad. No:1', 'Beyoğlu', 'İstanbul', '34000', '0212-1112233', '0532-1112233', 'ahmet.yilmaz@ornek.com', 1, 1, 3, 5000.00, 10.00, NULL, '1234567890', '11111111111', NULL, NULL, NULL, 1, 'Admin', GETDATE(), 'Admin', GETDATE()),
(2, 'Ayşe', 'Kara', '1990-02-02', '2021-02-01', NULL, 'Bağdat Cad. No:2', 'Kadıköy', 'İstanbul', '34000', '0216-2223344', '0533-2223344', 'ayse.kara@ornek.com', 2, 2, 2, 6000.00, 15.00, NULL, '1234567891', '22222222222', NULL, NULL, NULL, 1, 'Admin', GETDATE(), 'Admin', GETDATE()),
(3, 'Mehmet', 'Çelik', '1985-03-03', '2019-03-01', NULL, 'Atatürk Bulvarı No:3', 'Çankaya', 'Ankara', '06000', '0312-3334455', '0534-3334455', 'mehmet.celik@ornek.com', 3, 1, 4, 7000.00, 12.00, NULL, '1234567892', '33333333333', NULL, NULL, NULL, 1, 'Admin', GETDATE(), 'Admin', GETDATE()),
(4, 'Fatma', 'Demir', '1995-04-04', '2022-04-01', NULL, 'Cumhuriyet Cad. No:4', 'Buca', 'İzmir', '35000', '0232-4445566', '0535-4445566', 'fatma.demir@ornek.com', 4, 2, 1, 8000.00, 18.00, NULL, '1234567893', '44444444444', NULL, NULL, NULL, 1, 'Admin', GETDATE(), 'Admin', GETDATE());

INSERT INTO tbl_Maaslar (Maas_ID, Pers_ID, Maas_Tarihi, Maas_Tutari, Maas_Komisyonu, Ay_ID) VALUES
(1, 1, '2023-01-01', 5000.00, 500.00, 1),
(2, 2, '2023-02-01', 6000.00, 900.00, 2),
(3, 3, '2023-03-01', 7000.00, 840.00, 3),
(4, 4, '2023-04-01', 8000.00, 1440.00, 4);

INSERT INTO tbl_Kullanicilar (Kullanici_ID, Kullanici_Adi, Kullanici_Sifre, Yetki_ID) VALUES
(1, 'admin', 'admin123', 1),
(2, 'user1', 'user123', 2);
