CREATE TABLE film (
id_film VARCHAR2(5) PRIMARY KEY,
judul VARCHAR2(100),
sinopsis VARCHAR2(255),
tahun NUMBER(4),
durasi NUMBER(3)
);

CREATE TABLE theater (
id_theater VARCHAR2(5) PRIMARY KEY,
harga NUMBER(10,2),
kapasitas NUMBER(4),
kelas VARCHAR2(50)
);

CREATE TABLE member (
id_member VARCHAR2(5) PRIMARY KEY,
nama VARCHAR2(100),
no_hp VARCHAR2(15),
tgl_lahir DATE,
email VARCHAR2(100)
);

CREATE TABLE jadwal (
id_jadwal VARCHAR2(5) PRIMARY KEY,
id_film VARCHAR2(5),
id_theater VARCHAR2(5),
periode_start DATE,
periode_end DATE,
CONSTRAINT fk_jadwal_film
FOREIGN KEY (id_film) REFERENCES film(id_film),
CONSTRAINT fk_jadwal_theater
FOREIGN KEY (id_theater) REFERENCES theater(id_theater)
);

CREATE TABLE transaksi (
kode_pemesanan VARCHAR2(10) PRIMARY KEY,
id_jadwal VARCHAR2(5),
id_member VARCHAR2(5),
status VARCHAR2(20),
tanggal DATE,
total_harga NUMBER(10,2),
CONSTRAINT fk_transaksi_jadwal
FOREIGN KEY (id_jadwal) REFERENCES jadwal(id_jadwal),
CONSTRAINT fk_transaksi_member
FOREIGN KEY (id_member) REFERENCES member(id_member)
);

CREATE TABLE inventaris (
id_inventaris VARCHAR2(5) PRIMARY KEY,
id_theater VARCHAR2(5),
nomor_kursi VARCHAR2(5),
CONSTRAINT fk_inventaris_theater
FOREIGN KEY (id_theater) REFERENCES theater(id_theater)
);

INSERT INTO film VALUES ('F001','Assassins Creed','Film Action',2016,148);
INSERT INTO film VALUES ('F002','Insidious','Film Horror',2010,180);

INSERT INTO theater VALUES ('T001',50000,100,'Regular');
INSERT INTO theater VALUES ('T002',75000,80,'VIP');

INSERT INTO member VALUES
('M001','Aradea','08123456789',TO_DATE('2006-10-02','YYYY-MM-DD'),'aradea123@email.com');
INSERT INTO member VALUES
('M002','Satria','08234567890',TO_DATE('2005-10-02','YYYY-MM-DD'),'satria123@email.com');

INSERT INTO jadwal VALUES
('J001','F001','T001',TO_DATE('2025-09-03','YYYY-MM-DD'),TO_DATE('2026-09-03','YYYY-MM-DD'));

INSERT INTO transaksi VALUES
('TRX001','J001','M001','LUNAS',TO_DATE('2025-09-05','YYYY-MM-DD'),40000);

INSERT INTO inventaris VALUES ('I001','T001','A01');
INSERT INTO inventaris VALUES ('I002','T001','A02');

UPDATE film SET durasi = 200 WHERE id_film = 'F001';
UPDATE film SET durasi = 150 WHERE id_film = 'F002';

UPDATE theater SET harga = 40000 WHERE id_theater = 'T001';

UPDATE member SET no_hp = '08121179081' WHERE id_member = 'M001';

UPDATE transaksi SET tanggal = TO_DATE('2025-09-07','YYYY-MM-DD')WHERE
kode_pemesanan = 'TRX001';

UPDATE inventaris SET nomor_kursi = 'A10' WHERE id_inventaris = 'I002';

DELETE FROM film WHERE id_film = 'F002';

DELETE FROM member WHERE id_member = 'M002';