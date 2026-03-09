CREATE TABLE mahasiswa (
id NUMBER PRIMARY KEY,
nama VARCHAR2(100),
tempat_lahir VARCHAR2(50),
tanggal_lahir DATE,
nomor_hp VARCHAR2(15),
email VARCHAR2(100),
tinggi_badan NUMBER(5,2),
berat_badan NUMBER(5,2)
);

INSERT INTO mahasiswa VALUES (1,'Andi Saputra','Jakarta',TO_DATE('2002-01-15','YYYY-MM-DD'),'081234567890','andi@gmail.com',170,65);
INSERT INTO mahasiswa VALUES (2,'Budi Santoso','Bandung',TO_DATE('2001-03-20','YYYY-MM-DD'),'081234567891','budi@gmail.com',168,60);
INSERT INTO mahasiswa VALUES (3,'Citra Lestari','Surabaya',TO_DATE('2002-05-10','YYYY-MM-DD'),'081234567892','citra@gmail.com',160,50);
INSERT INTO mahasiswa VALUES (4,'Dedi Kurniawan','Medan',TO_DATE('2000-07-22','YYYY-MM-DD'),'081234567893','dedi@gmail.com',172,68);
INSERT INTO mahasiswa VALUES (5,'Eka Putri','Yogyakarta',TO_DATE('2001-09-11','YYYY-MM-DD'),'081234567894','eka@gmail.com',158,48);
INSERT INTO mahasiswa VALUES (6,'Fajar Nugroho','Semarang',TO_DATE('2002-11-01','YYYY-MM-DD'),'081234567895','fajar@gmail.com',175,70);
INSERT INTO mahasiswa VALUES (7,'Gina Maharani','Malang',TO_DATE('2001-02-18','YYYY-MM-DD'),'081234567896','gina@gmail.com',162,52);
INSERT INTO mahasiswa VALUES (8,'Hadi Pratama','Bekasi',TO_DATE('2002-04-25','YYYY-MM-DD'),'081234567897','hadi@gmail.com',169,64);
INSERT INTO mahasiswa VALUES (9,'Indah Sari','Bogor',TO_DATE('2001-06-30','YYYY-MM-DD'),'081234567898','indah@gmail.com',157,47);
INSERT INTO mahasiswa VALUES (10,'Joko Susilo','Solo',TO_DATE('2000-08-12','YYYY-MM-DD'),'081234567899','joko@gmail.com',173,69);
INSERT INTO mahasiswa VALUES (11,'Kartika Dewi','Denpasar',TO_DATE('2002-10-05','YYYY-MM-DD'),'081234567900','kartika@gmail.com',161,51);
INSERT INTO mahasiswa VALUES (12,'Lukman Hakim','Padang',TO_DATE('2001-12-17','YYYY-MM-DD'),'081234567901','lukman@gmail.com',174,72);
INSERT INTO mahasiswa VALUES (13,'Maya Sari','Palembang',TO_DATE('2002-02-14','YYYY-MM-DD'),'081234567902','maya@gmail.com',159,49);
INSERT INTO mahasiswa VALUES (14,'Nanda Putra','Makassar',TO_DATE('2001-04-19','YYYY-MM-DD'),'081234567903','nanda@gmail.com',171,66);
INSERT INTO mahasiswa VALUES (15,'Oki Prasetyo','Banjarmasin',TO_DATE('2000-06-23','YYYY-MM-DD'),'081234567904','oki@gmail.com',176,75);

SELECT 
UPPER(nama) AS nama_besar,
LOWER(nama) AS nama_kecil,
INITCAP(nama) AS nama_format,
CONCAT(nama,' Mahasiswa') AS gabung,
LENGTH(nama) AS panjang_nama,
SUBSTR(nama,1,4) AS potong_nama,
LPAD(nama,15,'*') AS lpad_nama,
RPAD(nama,15,'*') AS rpad_nama,
LTRIM(nama) AS ltrim_nama,
RTRIM(nama) AS rtrim_nama,
INSTR(nama,'a') AS posisi_a,
REPLACE(nama,'a','@') AS ganti_huruf
FROM mahasiswa;

SELECT 
tanggal_lahir,
TO_CHAR(tanggal_lahir,'MM') AS bulan_angka,
TO_CHAR(tanggal_lahir,'MON') AS bulan_singkat,
TO_CHAR(tanggal_lahir,'MONTH') AS bulan_lengkap,
TO_CHAR(tanggal_lahir,'DD') AS tanggal,
TO_CHAR(tanggal_lahir,'DY') AS hari_singkat,
TO_CHAR(tanggal_lahir,'YYYY') AS tahun,
TO_CHAR(tanggal_lahir,'YY') AS tahun_pendek,
SYSDATE,
ADD_MONTHS(tanggal_lahir,6) AS tambah_bulan,
LAST_DAY(tanggal_lahir) AS akhir_bulan,
NEXT_DAY(tanggal_lahir,'MONDAY') AS senin_berikutnya,
MONTHS_BETWEEN(SYSDATE,tanggal_lahir) AS selisih_bulan,
ROUND(tanggal_lahir,'YEAR') AS pembulatan_tahun
FROM mahasiswa;

SELECT 
TO_NUMBER('12345') AS contoh_to_number,
TO_CHAR(SYSDATE,'DD-MM-YYYY') AS contoh_to_char_date,
TO_CHAR(tinggi_badan) AS tinggi_text,
TO_DATE('2024-01-01','YYYY-MM-DD') AS contoh_to_date
FROM mahasiswa;

SELECT 
ABS(berat_badan) AS nilai_abs,
MOD(berat_badan,5) AS sisa_bagi,
FLOOR(tinggi_badan) AS floor_tinggi,
POWER(berat_badan,2) AS pangkat_dua,
ROUND(tinggi_badan,0) AS pembulatan,
CEIL(tinggi_badan) AS ceil_tinggi
FROM mahasiswa;
