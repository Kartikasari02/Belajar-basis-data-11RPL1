1. SELECT * FROM `tb_obat` WHERE satuan = 'botol';
2. SELECT * FROM `tb_obat` WHERE jenis = 'obat keras' OR jenis = 'obat terbatas';
3. SELECT * FROM `tb_obat` WHERE stok < 50;
4. SELECT * FROM `tb_obat` WHERE satuan = 'botol' OR satuan = 'lembar' OR satuan ='strips';
5. SELECT * FROM `tb_obat` WHERE jenis = 'obat bebas ' AND harga_jual ORDER BY harga_jual ASC;
6. SELECT * FROM tb_obat WHERE satuan='Botol' AND harga_beli BETWEEN '10000' AND '100000';
7. SELECT * FROM `tb_obat` WHERE jenis = 'obat bebas' AND stok >= 5;
8. SELECT * FROM `tb_obat` WHERE nama_obat LIKE 'B%'
9. SELECT * FROM `tb_obat` WHERE nama_obat LIKE '%om%';
10. SELECT satuan, SUM(stok) AS stok_total FROM `tb_obat` GROUP BY satuan;
11. SELECT jenis, SUM(harga_jual) AS harga_jual FROM `tb_obat` GROUP BY satuan;
12. SELECT * FROM `tb_obat` WHERE kode_obat = 'K001' OR kode_obat = 'K003' OR kode_obat = 'K005' OR kode_obat = 'K007';
13. SELECT 'kode_obat', 'nama_obat', 'jenis', 'satuan', 'stok', 'harga_beli', 'harga_jual', (harga_beli * stok) AS totalhargabeli, (harga_jual* stok) AS totalhargajual FROM `tb_obat`;
14. SELECT AVG(harga_jual) AS rata_rata FROM tb_obat WHERE satuan <> "Lembar" GROUP BY satuan;
15. SELECT MIN(harga_beli) AS harga_tertinggi, MAX(harga_beli) AS harga_terendah FROM `tb_obat`;