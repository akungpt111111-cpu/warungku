-- Database WarungKu
CREATE DATABASE IF NOT EXISTS warungku;
USE warungku;

-- Tabel Admin
CREATE TABLE admin (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel Pelanggan
CREATE TABLE pelanggan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel Menu
CREATE TABLE menu (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nama_menu VARCHAR(100) NOT NULL,
    kategori VARCHAR(50) NOT NULL,
    harga INT NOT NULL,
    stok INT NOT NULL DEFAULT 0,
    gambar VARCHAR(255),
    status VARCHAR(20) DEFAULT 'aktif',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel Pesanan
CREATE TABLE pesanan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pelanggan_id INT NOT NULL,
    total INT NOT NULL,
    status VARCHAR(20) DEFAULT 'Menunggu',
    tanggal TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan(id)
);

-- Tabel Detail Pesanan
CREATE TABLE detail_pesanan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pesanan_id INT NOT NULL,
    menu_id INT NOT NULL,
    qty INT NOT NULL,
    subtotal INT NOT NULL,
    FOREIGN KEY (pesanan_id) REFERENCES pesanan(id) ON DELETE CASCADE,
    FOREIGN KEY (menu_id) REFERENCES menu(id)
);

-- Insert Admin Default
INSERT INTO admin (username, password) VALUES ('admin', '$2y$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcg7b3XeKeUxWdeS86E36P4/KFm');

-- Insert Menu Sample
INSERT INTO menu (nama_menu, kategori, harga, stok, gambar, status) VALUES
('Nasi Goreng Spesial', 'Nasi', 25000, 50, 'nasi-goreng.jpg', 'aktif'),
('Mie Ayam', 'Mie', 18000, 40, 'mie-ayam.jpg', 'aktif'),
('Soto Ayam', 'Sup', 15000, 30, 'soto-ayam.jpg', 'aktif'),
('Ayam Goreng', 'Daging', 30000, 25, 'ayam-goreng.jpg', 'aktif'),
('Es Teh Manis', 'Minuman', 5000, 100, 'es-teh.jpg', 'aktif'),
('Bakso Daging', 'Sup', 20000, 35, 'bakso.jpg', 'aktif');