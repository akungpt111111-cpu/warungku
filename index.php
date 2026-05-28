<?php
session_start();
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WarungKu - Restoran UMKM</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow">
        <div class="container">
            <a class="navbar-brand fw-bold" href="index.php">
                <i class="bi bi-shop"></i> WarungKu
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="pelanggan/menu.php">Menu</a>
                    </li>
                    <?php if (isset($_SESSION['pelanggan'])): ?>
                        <li class="nav-item">
                            <a class="nav-link" href="pelanggan/keranjang.php">
                                <i class="bi bi-cart"></i> Keranjang
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pelanggan/status_pesanan.php">Pesanan Saya</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pelanggan/logout.php">Logout</a>
                        </li>
                    <?php else: ?>
                        <li class="nav-item">
                            <a class="nav-link" href="pelanggan/login.php">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pelanggan/register.php">Register</a>
                        </li>
                    <?php endif; ?>
                    <li class="nav-item">
                        <a class="nav-link" href="admin/login.php"><i class="bi bi-lock"></i> Admin</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section py-5 bg-warning-custom text-white">
        <div class="container text-center">
            <h1 class="display-4 fw-bold mb-3">Selamat Datang di WarungKu</h1>
            <p class="lead mb-4">Nikmati Kelezatan Makanan Berkualitas dengan Harga Terjangkau</p>
            <a href="pelanggan/menu.php" class="btn btn-light btn-lg">
                <i class="bi bi-bag-check"></i> Pesan Sekarang
            </a>
        </div>
    </section>

    <!-- Info Section -->
    <section class="py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-md-4 text-center">
                    <i class="bi bi-clock-history display-4 text-warning-custom mb-3"></i>
                    <h5>Cepat & Tepat Waktu</h5>
                    <p>Pesanan Anda akan diproses dengan cepat dan tepat waktu</p>
                </div>
                <div class="col-md-4 text-center">
                    <i class="bi bi-star display-4 text-warning-custom mb-3"></i>
                    <h5>Kualitas Terbaik</h5>
                    <p>Menggunakan bahan-bahan pilihan dan segar setiap hari</p>
                </div>
                <div class="col-md-4 text-center">
                    <i class="bi bi-wallet2 display-4 text-warning-custom mb-3"></i>
                    <h5>Harga Terjangkau</h5>
                    <p>Harga kompetitif dengan kualitas yang tidak tertandingi</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white py-4 mt-5">
        <div class="container text-center">
            <p>&copy; 2024 WarungKu - Restoran UMKM. All rights reserved.</p>
            <p>Hubungi: <i class="bi bi-telephone"></i> 0812-3456-7890 | <i class="bi bi-envelope"></i> info@warungku.com</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/script.js"></script>
</body>
</html>