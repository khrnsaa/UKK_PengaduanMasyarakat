<?= $this->extend('Masyarakat/Dashboard') ?>
<?= $this->section('content') ?>

<div class="container">

    <h3>Laporan Pengaduan</h3>
    <button onclick="window.print()" class="btn btn-primary btn-sm mr-2">Print</button>

    <hr/>
    <table class="table table-bordered">
    <thead class="bg-light text-center">
        <tr align="center">
        <th>No</th>
        <th>NIK</th>
        <th>Nama Lengkap</th>
        <th>Tanggal Pengaduan</th>
        <th>Isi Laporan</th>
        <th>Tanggal Tanggapan</th>
        <th>Nama Petugas</th>
        <th>Isi Tanggapan</th>
        <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($ListPengaduan as $key => $row): ?>
            <tr align="center">
            <td><?= $key + 1 ?></td>
            <td><?= $row['nik'] ?></td>
            <td><?= $row['nama'] ?></td>
            <td><?= $row['tgl_pengaduan'] ?></td>
            <td><?= $row['isi_laporan'] ?></td>
            <td><?= $row['tgl_tanggapan'] ?></td>
            <td><?= $row['nama_petugas'] ?></td>
            <td><?= $row['isi_tanggapan'] ?></td>
            <td><?= $row['status'] ?></td>
        <?php endforeach;?>
    </tbody>
    </table>
</div> 
<?= $this->endSection() ?>