-- S1: Ankara’da çalışan personelleri listeleyiniz.
SELECT * FROM tbl_Personeller WHERE Pers_Ili = 'Ankara';

-- S2: İkiden fazla personelin çalıştığı illerin adlarını sıralayınız.
SELECT Pers_Ili, COUNT(*) AS Personel_Sayisi
FROM tbl_Personeller
GROUP BY Pers_Ili
HAVING COUNT(*) > 2;

-- S3: Bölümlere göre personel maaşları ortalamasını listeleyiniz.
SELECT b.Bolum_Adi, AVG(p.Pers_Maas) AS Ortalama_Maas
FROM tbl_Personeller p
JOIN tbl_Bolumler b ON p.Bolum_ID = b.Bolum_ID
GROUP BY b.Bolum_Adi;

-- S4: Personel adında “M” harfi bulunan personelleri listeleyiniz.
SELECT * FROM tbl_Personeller WHERE Pers_Adi LIKE '%M%';

-- S5: Personelin Bölüm Adi ve Bölüm Telefonlarını listeleyiniz.
SELECT p.Pers_Adi, p.Pers_Soyadi, b.Bolum_Adi, b.Bolum_Tel
FROM tbl_Personeller p
JOIN tbl_Bolumler b ON p.Bolum_ID = b.Bolum_ID;

-- S6: Personele yıllık ödenen maaşların toplamlarını listeleyiniz.
SELECT Pers_ID, SUM(Maas_Tutari) AS Yillik_Toplam_Maas
FROM tbl_Maaslar
GROUP BY Pers_ID;

-- S7: Personel adının ilk harfini ve soyadını listeleyen sorguyu yazınız. Örneğin “mçoruh” gibi
SELECT LOWER(SUBSTRING(Pers_Adi, 1, 1) + Pers_Soyadi) AS AdSoyadKodu
FROM tbl_Personeller;

-- S8: Personelin yaşlarını hesaplayan bir sorgu yazınız.
SELECT Pers_Adi, Pers_Soyadi, DATEDIFF(YEAR, Pers_DTarihi, GETDATE()) AS Yas
FROM tbl_Personeller;

-- S9: Kullanıcılar tablosundaki 2 nolu kullanıcının şifresini değiştiren güncelleme sorgusunu yazınız.
UPDATE tbl_Kullanicilar SET Kullanici_Sifre = 'YeniSifre123' WHERE Kullanici_ID = 2;

-- S10: Ünvanı “Pazarlamacı” olan personeli tablodan siliniz.
DELETE FROM tbl_Personeller WHERE Unvan_ID = (SELECT K_ID FROM tbl_Kategoriler WHERE Unvan = 'Pazarlamacı');
