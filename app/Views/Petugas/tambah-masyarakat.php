<?= $this->extend('dashboard') ?>
<?= $this->section('content') ?>
<h2>Penambahan Data Masyarakat</h2>
<p>Silahkan gunakan form dibawah ini untuk mendata Masyarakat baru.</p>
<form method="POST" action="/masyarakat/simpan">
<div class="form-group">
<label class="font-weight-bold">NIK</label>
<input type="text" name="txtInputNik" class="form-control" placeholder="Masukan NIK" autocomplete="off" autofocus>
</div>
<div class="form-group">
<label class="font-weight-bold">Nama Lengkap</label>
<input type="text" name="txtInputNama" class="form-control" placeholder="Masukan nama lengkap" autocomplete="off">
</div>
<div class="form-group">
<label class="font-weight-bold">No Telepon</label>
<input  type="tel" id="phone"  name="txtInputTlp" class="form-control" placeholder="Masukan no telphone" autocomplete="off">
</div>
<div class="form-group">
<button class="btn btn-primary">Simpan</button>

</div>
</form>
<?= $this->endSection() ?>