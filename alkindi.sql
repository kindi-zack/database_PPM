2. 	SELECT * FROM provinces;
	SELECT * FROM regencies;
	SELECT * FROM districts;
	SELECT * FROM villages;
	
3	ALTER TABLE provinces RENAME TO provinsi;

4	ALTER TABLE regencies RENAME TO kabupaten_kota;

5	ALTER TABLE districts RENAME TO kecamatan;

6	ALTER TABLE villages RENAME TO desa;	

7	SELECT SUBSTRING(desa.id, 1, 7) AS id_desa,  desa.name AS desa, provinsi.name AS provinsi 
	FROM desa INNER JOIN provinsi
	ON provinsi.id = SUBTRING(desa.id, 1, 2)
	WHERE provinsi.name = "ACEH";
	
8	SELECT SUBSTRING(kecamatan.id, 1, 4) AS id_kecamatan,  kecamatan.name AS kecamatan, provinsi.name AS provinsi 
	FROM kecamatan INNER JOIN provinsi
	ON provinsi.id = SUBTRING(kecamatan.id, 1, 2)
	WHERE provinsi.name = "ACEH";
	
9	SELECT kabupaten_kota.id AS id_kabupaten_kota,  kabupaten_kota.name AS kabupaten, provinsi.name AS provinsi 
	FROM kabupaten_kota INNER JOIN provinsi
	ON provinsi.id = kabupaten_kota.provinsi_id
	WHERE provinsi.name = "ACEH";
