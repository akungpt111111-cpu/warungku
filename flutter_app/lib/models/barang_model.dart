class BarangModel {
  final String id;
  final String namaBarang;
  final String kategori;
  final int stok;
  final int harga;
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

  factory BarangModel.fromMap(Map<String, dynamic> map, String documentId) {
    return BarangModel(
      id: documentId,
      namaBarang: map['namaBarang'] ?? '',
      kategori: map['kategori'] ?? '',
      stok: map['stok'] ?? 0,
      harga: map['harga'] ?? 0,
      deskripsi: map['deskripsi'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      createdAt: map['createdAt'] != null
          ? (map['createdAt'] as dynamic).toDate()
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'namaBarang': namaBarang,
      'kategori': kategori,
      'stok': stok,
      'harga': harga,
      'deskripsi': deskripsi,
      'imageUrl': imageUrl,
      'createdAt': createdAt,
    };
  }

  BarangModel copyWith({
    String? id,
    String? namaBarang,
    String? kategori,
    int? stok,
    int? harga,
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

class UserModel {
  final String uid;
  final String email;
  final String name;
  final DateTime createdAt;

  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    required this.createdAt,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      createdAt: map['createdAt'] != null
          ? (map['createdAt'] as dynamic).toDate()
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'createdAt': createdAt,
    };
  }
}