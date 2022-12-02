--DATABASE(veritabani)olusturma
Create database yusuf;

create database erol;

--DDL - DATA DEFİNITION LANG.
-- CREATE - TABLO OLUSTURMA
CREATE TABLE ogrenciler1
(
ogrenci_no char(7),
isim varchar(20),
soyisim varchar(25),
not_ort real,--ondalikli sayilar icin kullanilir(Double gibi)
kayit_tarih date

);

--VAR OLAN TABLODAN YENİ BİR TABLO OLUSTURMA
CREATE TABLE ogrenci_notlari
AS --Benzer tablodaki basliklarla ve data tipleriyle yeni bir tablo olusturmak icin normal tablo olustururken ki
--parantezler yerine AS kullanıp Select komutuyla almak istediğimiz verileri alırız
SELECT isim,soyisim,not_ort FROM ogrenciler1;

-- DML - DATA MANUPULATION LANG.
-- INSERT (Database'e veri ekleme)

INSERT INTO ogrenciler1 VALUES('1234567','Said','ILHAN',85.5,now());
INSERT INTO ogrenciler1 VALUES('1234567','Said','ILHAN',85.5,'2020-12-11');

-- BIR TABLOYA PARÇALI VERİ EKLEMEK İSTERSEK
INSERT INTO ogrenciler1(isim,soyisim)VALUES('Yusuf','Evren');

-- DQL - DATA QUERY LANG.
-- SELECT

select * FROM ogrenciler1; -- Burdaki * sembolü herşeyi anlamındadır



