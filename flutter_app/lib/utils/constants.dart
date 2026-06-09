import 'package:flutter/material.dart';

class AppColors {
  // Primary Color - Blue
  static const Color primary = Color(0xFF1E40AF);
  static const Color primaryLight = Color(0xFF3B82F6);
  static const Color primaryDark = Color(0xFF1E3A8A);

  // Secondary Colors
  static const Color secondary = Color(0xFF0EA5E9);
  static const Color accent = Color(0xFF06B6D4);

  // Neutral Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color gray = Color(0xFF6B7280);
  static const Color lightGray = Color(0xFFF3F4F6);
  static const Color lightGray2 = Color(0xFFE5E7EB);

  // Status Colors
  static const Color success = Color(0xFF10B981);
  static const Color error = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF59E0B);
  static const Color info = Color(0xFF3B82F6);
}

class AppSizes {
  // Padding and Margins
  static const double paddingXSmall = 4.0;
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingXLarge = 32.0;

  // Border Radius
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
  static const double radiusXLarge = 24.0;

  // Icon Sizes
  static const double iconSmall = 16.0;
  static const double iconMedium = 24.0;
  static const double iconLarge = 32.0;

  // Font Sizes
  static const double fontSmall = 12.0;
  static const double fontMedium = 14.0;
  static const double fontLarge = 16.0;
  static const double fontXLarge = 18.0;
  static const double fontXXLarge = 24.0;
}

class AppStrings {
  // App Name
  static const String appName = 'WarungKu';

  // Auth
  static const String login = 'Login';
  static const String register = 'Register';
  static const String email = 'Email';
  static const String password = 'Password';
  static const String confirmPassword = 'Confirm Password';
  static const String name = 'Nama';
  static const String dontHaveAccount = 'Belum punya akun?';
  static const String haveAccount = 'Sudah punya akun?';
  static const String forgotPassword = 'Lupa password?';
  static const String logout = 'Logout';
  static const String noAccount = 'Tidak punya akun?';

  // Home
  static const String home = 'Home';
  static const String profile = 'Profile';
  static const String addItem = 'Tambah Item';
  static const String edit = 'Edit';
  static const String delete = 'Hapus';
  static const String search = 'Cari barang...';

  // Details
  static const String category = 'Kategori';
  static const String price = 'Harga';
  static const String stock = 'Stok';
  static const String description = 'Deskripsi';
  static const String itemName = 'Nama Barang';

  // Buttons
  static const String save = 'Simpan';
  static const String cancel = 'Batal';
  static const String update = 'Update';
  static const String create = 'Buat';
  static const String confirm = 'Konfirmasi';
  static const String uploadImage = 'Upload Gambar';
  static const String chooseFromGallery = 'Pilih dari Gallery';
  static const String takePhoto = 'Ambil Foto';

  // Messages
  static const String loadingMessage = 'Memuat...';
  static const String successMessage = 'Berhasil!';
  static const String errorMessage = 'Terjadi kesalahan';
  static const String deleteConfirm = 'Apakah Anda yakin ingin menghapus?';
  static const String noData = 'Tidak ada data';
  static const String deleteSuccess = 'Berhasil dihapus';
  static const String addSuccess = 'Berhasil ditambahkan';
  static const String updateSuccess = 'Berhasil diperbarui';
}