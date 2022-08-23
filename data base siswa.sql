MariaDB [(none)]> CREATE DATABASE Sekolah;
Query OK, 1 row affected 
MariaDB [(none)]> use Sekolah;
Database changed
MariaDB [sekolah]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| biografi           |
| kartika            |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
MariaDB [sekolah]> CREATE TABLE siswa(nis CHAR(8)PRIMARY KEY, nama VARCHAR(100), jk CHAR(1),tmp_lahir VARCHAR(50), tgl_lahir DATE, alamat TEXT, kelas VARCHAR(10), nilai FLOAT);
MariaDB [sekolah]>  INSERT INTO siswa VALUES('12100274','FIRDAUS WIGUNA','L','SUBANG','2005-08-17','KALIJATI','11-RPL-1','70.97');
Query OK, 1 row affected (0.009 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUES ('12100281','GALIH AKBAR MAULANA','L','TANGERANG','2005-07-21','CIJAMBE','11-RPL-1','80.88');
Query OK, 1 row affected (0.006 sec)
MariaDB [sekolah]>  INSERT INTO siswa VALUES ('12100053','ALYA ELIDHIYA','P','SUBANG','2006-04-16','SUBANG','11-RPL-1','80.58');
Query OK, 1 row affected (0.006 sec)
MariaDB [sekolah]>  INSERT INTO siswa VALUES('12100293','HAIKAL FADHILAH IBRAHIM','L','SUBANG','2005-11-07','SUBANG','11-RPL-1','70.20');
Query OK, 1 row affected (0.008 sec)
MariaDB [sekolah]> INSERT INTO siswa VALUES ('12100362','KARTIKA SARI DEWI','L','CIANJUR','2005-09-02','SUBANG','11-RPL-1','80.88');
Query OK, 1 row affected (0.011 sec)
MariaDB [sekolah]> UPDATE siswa SET tmp_lahir="BANDUNG" WHERE nis="12100268";
Query OK, 0 rows affected (0.017 sec)
Rows matched: 0  Changed: 0  Warnings: 0
MariaDB [sekolah]> UPDATE siswa SET tmp_lahir="2005-05-05", alamat="BINONG" WHERE nis="12100274";
Query OK, 1 row affected (0.007 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> DESCRIBE siswa;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| nis       | char(8)      | NO   | PRI | NULL    |       |
| nama      | varchar(100) | YES  |     | NULL    |       |
| jk        | char(1)      | YES  |     | NULL    |       |
| tmp_lahir | varchar(50)  | YES  |     | NULL    |       |
| tgl_lahir | date         | YES  |     | NULL    |       |
| alamat    | text         | YES  |     | NULL    |       |
| kelas     | varchar(10)  | YES  |     | NULL    |       |
| nilai     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.020 sec)

MariaDB [sekolah]> DELETE FROM siswa WHERE nis="12100274";
Query OK, 1 row affected (0.015 sec)
MariaDB [sekolah]> select *from siswa;
+----------+------------------------------+------+------------+------------+--------------+----------+-------+
| nis      | nama                         | jk   | tmp_lahir  | tgl_lahir  | alamat       | kelas    | nilai |
+----------+------------------------------+------+------------+------------+--------------+----------+-------+
| 12100022 | AEF ADITIA GELAR NUGRAHA     | L    | SUBANG     | 2005-09-05 | PAGADEN      | 11-RPL-1 | 78.88 |
| 12100053 | ALYA ELIDHIYA                | P    | SUBANG     | 2006-04-16 | SUBANG       | 11-RPL-1 | 80.88 |
| 12100086 | ARIEZTO ZUCOV                | L    | SUBANG     | 2006-12-06 | SUBANG       | 11-RPL-1 | 70.88 |
| 12100095 | ARZENNA HAQI MUHAMMAD        | L    | SUBANG     | 2005-11-27 | SUBANG       | 11-RPL-1 |  78.2 |
| 12100098 | ASEP RIZKI JULIANSAH         | L    | SUBANG     | 2006-07-17 | SUBANG       | 11-RPL-1 |  75.2 |
| 12100148 | DAVID LUTFI                  | L    | SUBANG     | 2005-09-16 | SUBANG       | 11-RPL-1 | 70.88 |
| 12100217 | EBEN HEZER WANGSA DJAJA      | L    | SUBANG     | 2006-10-30 | SUBANG       | 11-RPL-1 | 72.68 |
| 12100218 | EGAN WIRYAWAN                | L    | SUBANG     | 2006-06-16 | SUBANG       | 11-RPL-1 | 72.48 |
| 12100219 | EGI RENALDI                  | L    | SUBANG     | 2006-07-26 | SUBANG       | 11-RPL-1 | 70.48 |
| 12100236 | EPI HALIMAH                  | P    | SUBANG     | 2006-04-27 | SUBANG       | 11-RPL-1 | 70.48 |
| 12100249 | FADHL GAVINDAFFA ABDULLAH    | L    | SUBANG     | 2006-04-27 | TANJUNGWANGI | 11-RPL-1 | 71.48 |
| 12100268 | FARIZ FADLI RAFIUDIN         | L    | YOGJAKARTA | 2005-06-22 | SUBANG       | 11-RPL-1 | 75.55 |
| 12100276 | FIRDAUS WIGUNA               | L    | SUBANG     | 2006-09-01 | SUBANG       | 11-RPL-1 |  77.5 |
| 12100281 | GALIH AKBAR MAULANA          | L    | TANGERANG  | 2005-07-21 | CIJAMBE      | 11-RPL-1 |  80.5 |
| 12100293 | HAIKAL FADHILAH IBRAHIM      | L    | SUBANG     | 2005-11-07 | SUBANG       | 11-RPL-1 | 81.35 |
| 12100307 | HASBI DHIYA FARHANSYAH       | L    | GARUT      | 2005-11-17 | SUBANG       | 11-RPL-1 | 80.55 |
| 12100340 | IQBAL NAUFAL HAKIM           | L    | MAKASSAR   | 2005-12-29 | SUBANG       | 11-RPL-1 |    82 |
| 12100362 | KARTIKA SARI DEWI            | P    | CIANJUR    | 2005-09-02 | CIJAMBE      | 11-RPL-1 |    80 |
| 12100410 | M. IKBAL SYAHPUTRA           | L    | SUBANG     | 2006-06-26 | SUBANG       | 11-RPL-1 |    80 |
| 12100419 | M.DZAKY FIRDAUS              | L    | BANDUNG    | 2006-07-21 | SUBANG       | 11-RPL-1 |  79.8 |
| 12100452 | MOHAMAD INDRA ERDIN          | L    | SUBANG     | 2005-09-22 | SUBANG       | 11-RPL-1 | 79.78 |
| 12100476 | MUHAMAD WAHYUDIN SYAWALI     | L    | JAKARTA    | 2005-11-08 | SUBANG       | 11-RPL-1 |  79.4 |
| 12100497 | MUTHIA ZAHRA RUKMANA         | P    | SUBANG     | 2006-02-12 | PALASARI     | 11-RPL-1 |  80.4 |
| 12100531 | NAZWA ANGGINA                | P    | SUBANG     | 2006-07-02 | SUBANG       | 11-RPL-1 |  80.6 |
| 12100563 | NURUL EKA MARYANA            | P    | BANDUNG    | 2006-06-02 | SUBANG       | 11-RPL-1 |  78.4 |
| 12100614 | RENALDI NURMAZID             | L    | SUBANG     | 2006-09-16 | SUBANG       | 11-RPL-1 | 78.49 |
| 12100662 | RIZKI GIANT SEPANGGA         | L    | SUBANG     | 2006-12-07 | SUBANG       | 11-RPL-1 | 70.49 |
| 12100670 | RIZKI CATUR MADANI           | L    | SUBANG     | 2006-06-22 | SUBANG       | 11-RPL-1 | 77.49 |
| 12100673 | ROFI ANUGRAH FIRDAUS         | L    | SUBANG     | 2006-06-03 | SUBANG       | 11-RPL-1 | 77.99 |
| 12100700 | SANDI ADI PRATAMA            | L    | SUBANG     | 2006-02-17 | SUBANG       | 11-RPL-1 | 80.99 |
| 12100714 | SELLY RIZKI APRILIA          | P    | SUBANG     | 2006-04-14 | SUBANG       | 11-RPL-1 | 74.99 |
| 12100725 | SHABYAN DWI JUANADRIANNSYAH  | L    | SUBANG     | 2006-06-08 | SUBANG       | 11-RPL-1 | 74.07 |
| 12100778 | TASYA AMELIA                 | P    | SUBANG     | 2006-06-14 | SUBANG       | 11-RPL-1 | 75.55 |
| 12100823 | WANANDA DILLA ZAHRA          | P    | SUBANG     | 2006-01-14 | SUBANG       | 11-RPL-1 | 79.55 |
| 12100848 | YUFA GINA MARYAFA            | P    | SUBANG     | 2006-10-27 | SUBANG       | 11-RPL-1 | 79.01 |
| 12100864 | ZUNADEA KUSMIANNDITA SUNTORO | L    | SUBANG     | 2006-09-07 | SUBANG       | 11-RPL-1 |   100 |
+----------+------------------------------+------+------------+------------+--------------+----------+-------+
36 rows in set (0.001 sec)