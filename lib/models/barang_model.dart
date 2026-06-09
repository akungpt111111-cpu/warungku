class BarangModel {
  final String id;
  final String namaBarang;
  final String kategori;
  final int stok;
  final double harga;
  final String deskripsi;
  final String imageUrl;
  final DateTime createdAt;

  BarangModel({
    required this.id,
    required this.namaBarang,
    required this.kategori,
    required this.stok,
    required this.harga,
    required this.deskripsi,
    required this.imageUrl,
    required this.createdAt,
  });

  // Convert Firestore document to BarangModel
  factory BarangModel.fromFirestore(Map<String, dynamic> data, String docId) {
    return BarangModel(
      id: docId,
      namaBarang: data['namaBarang'] ?? '',
      kategori: data['kategori'] ?? '',
      stok: data['stok'] ?? 0,
      harga: (data['harga'] ?? 0).toDouble(),
      deskripsi: data['deskripsi'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      createdAt: data['createdAt'] != null
          ? DateTime.parse(data['createdAt'])
          : DateTime.now(),
    );
  }

  // Convert BarangModel to Firestore document
  Map<String, dynamic> toFirestore() {
    return {
      'namaBarang': namaBarang,
      'kategori': kategori,
      'stok': stok,
      'harga': harga,
      'deskripsi': deskripsi,
      'imageUrl': imageUrl,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  // Copy with method for updates
  BarangModel copyWith({
    String? id,
    String? namaBarang,
    String? kategori,
    int? stok,
    double? harga,
    String? deskripsi,
    String? imageUrl,
    DateTime? createdAt,
  }) {
    return BarangModel(
      id: id ?? this.id,
      namaBarang: namaBarang ?? this.namaBarang,
      kategori: kategori ?? this.kategori,
      stok: stok ?? this.stok,
      harga: harga ?? this.harga,
      deskripsi: deskripsi ?? this.deskripsi,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
