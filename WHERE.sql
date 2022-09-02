SELECT * FROM `siswa`LIMIT 10;

gabungan
SELECT * FROM `siswa` 
WHERE jenis_kelamin = 'P'
AND nilai BETWEEN 50 AND 70 
ORDER BY nilai DESC;



//cara memunculkan nama dengan huruf depan sama semua
SELECT * FROM `siswa` 
WHERE nama LIKE 'A%';


//cara memunculkan nama dengan huruf belakang sama
SELECT * FROM `siswa` 
WHERE nama LIKE '%I';

SELECT tempat_lahir, COUNT(jenis_kelamin)AS jumlah_orang FROM `siswa` 
GROUP BY jenis_kelamin;


SELECT jenis_kelamin, 
MAX(nilai) AS nilai_tertinggi, 
MIN(nilai) AS nilai_terendah, 
AVG(nilai) AS nilai_rerata, 
SUM(nilai) AS nilai_total 
FROM `siswa` 
GROUP BY jenis_kelamin;