<?php
// Konfigurasi Database
$host = 'localhost';
$user = 'root';
$password = '';
$database = 'warungku';

// Koneksi ke Database
$koneksi = mysqli_connect($host, $user, $password, $database);

// Cek Koneksi
if (!$koneksi) {
    die('Koneksi Database Gagal: ' . mysqli_connect_error());
}

// Set Charset
mysqli_set_charset($koneksi, 'utf8');

// Fungsi untuk Escape Data
function escape_data($data) {
    global $koneksi;
    return mysqli_real_escape_string($koneksi, $data);
}

// Fungsi untuk Hashing Password
function hash_password($password) {
    return password_hash($password, PASSWORD_BCRYPT);
}

// Fungsi untuk Verifikasi Password
function verify_password($password, $hash) {
    return password_verify($password, $hash);
}
?>