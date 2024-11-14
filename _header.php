<?php
require_once"_config/config.php";
require "_assets/libs/vendor/autoload.php";

if(!isset($_SESSION['user'])){
    echo "<script>window.location='".base_url('auth/login.php')."'</script>";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Aplikasi Rumah Sakit</title>
    <!-- Bootstrap Core CSS -->
    <link href="<?= base_url(); ?>/_assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url(); ?>/_assets/css/simple-sidebar.css" rel="stylesheet">
    <!-- load DataTables -->
    <link href="<?= base_url(); ?>/_assets/libs/DataTables/datatables.min.css" rel="stylesheet">
    <!-- load jquery online -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>

    <!-- load ckeditor -->
    <script src="<?= base_url(); ?>/_assets/libs/vendor/ckeditor/ckeditor/ckeditor.js"></script>
    <!-- <script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script> -->
    <style>
        /* Tema sidebar putih */
        #sidebar-wrapper {
            background: rgba(255, 255, 255, 0.7); /* Tingkat transparansi lebih tinggi */
            border-radius: 25px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 250px;
            backdrop-filter: blur(10px); 
        }

        /* Styling list menu di sidebar */
        .sidebar-nav {
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .sidebar-nav li {
            margin: 10px 0;
        }

        .sidebar-nav a {
            display: block;
            color: #333333; /* Warna teks gelap untuk kontras */
            text-decoration: none;
            padding: 12px 20px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.6); /* Warna abu-abu terang */
            font-weight: bold; /* Untuk menambah kontras dan keterbacaan */
            transition: background 0.3s;
        }

        /* Tidak ada perubahan warna saat hover atau active */
        .sidebar-nav a:hover {
            background: rgba(255, 255, 255, 0.5); /* Latar belakang sedikit gelap saat di-hover */
            color: #0197FA; /* Warna teks tetap gelap */
        }


        /* Tema putih untuk halaman utama */
        #page-content-wrapper {
            margin-left: 10px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            color: #333333;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Tambahan styling untuk heading dan teks */
        h1, h2, h3, h4, h5, h6 {
            color: #333333; /* Warna teks gelap untuk kontras */
        }

        p, a {
            color: #555555; /* Warna teks pencerah */
        }
    </style>
</head>
<body>
	<div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href=""><span class="text-primary">Rumah Sakit</span></a>
                </li>
                <li>
                    <a href="<?= base_url('dashboard'); ?>">Dashboard</a>
                </li>
                <li>
                    <a href="<?= base_url('pasien/data.php') ?>">Data Pasien</a>
                </li>
                <li>
                    <a href="<?= base_url('dokter/data.php') ?>">Data Dokter</a>
                </li>
                <li>
                    <a href="<?= base_url('poliklinik/data.php') ?>">Data Poliklinik</a>
                </li>
                <li>
                    <a href="<?= base_url('obat/data.php') ?>">Data Obat</a>
                </li>
                <li>
                    <a href="<?= base_url('rekammedis/data.php') ?>">Rekam Medis</a>
                </li>
                <li>
                    <a href="<?= base_url('auth/logout.php') ?>"><span class="text-danger">Logout</span></a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                
            