<?php

require_once 'koneksi/database.php';

require_once 'classes/Tiket.php';
require_once 'classes/TiketReguler.php';
require_once 'classes/TiketIMAX.php';
require_once 'classes/TiketVelvet.php';

function formatRupiah($angka)
{
    return "Rp " . number_format($angka, 0, ',', '.');
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Daftar Tiket Bioskop</title>

    <style>
        body{
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1{
            text-align:center;
        }

        h2{
            margin-top:40px;
            background:#f2f2f2;
            padding:10px;
        }

        table{
            width:100%;
            border-collapse:collapse;
            margin-top:10px;
        }

        th, td{
            border:1px solid #ddd;
            padding:10px;
            text-align:left;
        }

        th{
            background:#eaeaea;
        }
    </style>
</head>

<body>

<h1>Daftar Tiket Bioskop</h1>

<!-- STUDIO REGULAR -->
<h2>Studio Regular</h2>

<table>
    <tr>
        <th>ID Tiket</th>
        <th>Film</th>
        <th>Jadwal</th>
        <th>Kursi</th>
        <th>Fasilitas</th>
        <th>Total Harga</th>
    </tr>

<?php

$query = mysqli_query(
    $conn,
    "SELECT * FROM tabel_tiket WHERE jenis_studio='Regular'"
);

while($row = mysqli_fetch_assoc($query))
{
    $tiket = new TiketRegular(
        $row['id_tiket'],
        $row['nama_film'],
        $row['jadwal_tayang'],
        $row['jumlah_kursi'],
        $row['harga_dasar_tiket'],
        $row['tipe_audio'],
        $row['lokasi_baris']
    );

    echo "
    <tr>
        <td>{$row['id_tiket']}</td>
        <td>{$row['nama_film']}</td>
        <td>{$row['jadwal_tayang']}</td>
        <td>{$row['jumlah_kursi']}</td>
        <td>{$tiket->tampilkanInfoFasilitas()}</td>
        <td>" . formatRupiah($tiket->hitungTotalHarga()) . "</td>
    </tr>";
}
?>

</table>

<!-- STUDIO IMAX -->
<h2>Studio IMAX</h2>

<table>
    <tr>
        <th>ID Tiket</th>
        <th>Film</th>
        <th>Jadwal</th>
        <th>Kursi</th>
        <th>Fasilitas</th>
        <th>Total Harga</th>
    </tr>

<?php

$query = mysqli_query(
    $conn,
    "SELECT * FROM tabel_tiket WHERE jenis_studio='IMAX'"
);

while($row = mysqli_fetch_assoc($query))
{
    $tiket = new TiketIMAX(
        $row['id_tiket'],
        $row['nama_film'],
        $row['jadwal_tayang'],
        $row['jumlah_kursi'],
        $row['harga_dasar_tiket'],
        $row['kacamata_3d_id'],
        $row['efek_gerak_fitur']
    );

    echo "
    <tr>
        <td>{$row['id_tiket']}</td>
        <td>{$row['nama_film']}</td>
        <td>{$row['jadwal_tayang']}</td>
        <td>{$row['jumlah_kursi']}</td>
        <td>{$tiket->tampilkanInfoFasilitas()}</td>
        <td>" . formatRupiah($tiket->hitungTotalHarga()) . "</td>
    </tr>";
}
?>

</table>

<!-- STUDIO VELVET -->
<h2>Studio Velvet</h2>

<table>
    <tr>
        <th>ID Tiket</th>
        <th>Film</th>
        <th>Jadwal</th>
        <th>Kursi</th>
        <th>Fasilitas</th>
        <th>Total Harga</th>
    </tr>

<?php

$query = mysqli_query(
    $conn,
    "SELECT * FROM tabel_tiket WHERE jenis_studio='Velvet'"
);

while($row = mysqli_fetch_assoc($query))
{
    $tiket = new TiketVelvet(
        $row['id_tiket'],
        $row['nama_film'],
        $row['jadwal_tayang'],
        $row['jumlah_kursi'],
        $row['harga_dasar_tiket'],
        $row['bantal_selimut_pack'],
        $row['layanan_butler']
    );

    echo "
    <tr>
        <td>{$row['id_tiket']}</td>
        <td>{$row['nama_film']}</td>
        <td>{$row['jadwal_tayang']}</td>
        <td>{$row['jumlah_kursi']}</td>
        <td>{$tiket->tampilkanInfoFasilitas()}</td>
        <td>" . formatRupiah($tiket->hitungTotalHarga()) . "</td>
    </tr>";
}
?>

</table>

</body>
</html>