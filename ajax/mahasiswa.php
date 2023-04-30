<?php 
require '../functions.php';

$keyword = $_GET["keyword"];


$query = "SELECT * FROM tbl_mahasiswa
				WHERE
				nama LIKE '%$keyword%' OR 
				agama LIKE '%$keyword%' OR
				jk LIKE '%$keyword%'
				";
$mahasiswa = query($query);


?>

 <table class="table mt-3">
    <thead>
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Alamat</th>
            <th>Jenis Kelamin</th>
            <th>Agama</th>
            <th>Sekolah Asal</th>
            <th>Tindakan</th>
        </tr>
        <?php $i = 1; ?>
        <?php foreach ($mahasiswa as $row ) : ?>
    </thead>
    <tbody>
        <tr>
            <td><?= $i ?></td>
            <td><?= $row["nama"]; ?></td>
            <td><?= $row["alamat"]; ?></td>
            <td><?= $row['jk']; ?></td>
            <td><?= $row["agama"]; ?></td>
            <td><?= $row["asal_sekolah"]; ?></td>
            <td>
            <button type="submit" class="btn btn-primary"><a href="ubah.php?id=<?= $row["id"]; ?>">Ubah</a></button>
            <button type="submit" class="btn btn-danger mt-1" onclick="return confirm('Yakin ?')"><a href="hapus.php?id=<?= $row["id"]; ?>">Hapus</a></button>
            </td>
        </tr>
        <?php $i++; ?>
    <?php endforeach; ?>
    </tbody>
</table>