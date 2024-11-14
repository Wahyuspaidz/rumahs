<?php include_once('../_header.php'); ?>
<style>
    /* Tambahkan background pada halaman */
    body {
        background-image: url('<?= base_url(); ?>/_assets/images/dashboard-bg.jpg'); /* Ganti dengan path gambar background Anda */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        min-height: 100vh; /* Agar background mencakup seluruh halaman */
        margin: 0;
    }

    /* Styling untuk konten dashboard */
    .dashboard-content {
        background-color: rgba(255, 255, 255, 0.9); /* Background putih dengan transparansi */
        padding: 20px;
        border-radius: 10px;
        max-width: 800px;
        margin-left: 270px
        margin: 50px auto;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
    }
</style>
<div class="row">
    <div class="col-lg-12">
        <h1>Dashboard</h1>
        <p>Selamat datang <mark> <?= $_SESSION['user']; ?> </mark> di website Rumah Sakit (Rekam Medis)</p>
        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
    </div>
</div>


<?php include_once('../_footer.php'); ?>