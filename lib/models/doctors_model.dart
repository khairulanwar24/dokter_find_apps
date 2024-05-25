class DoctorModel {
  final int id;
  final String nama;
  final String jenis;
  final String tanggal;
  final String jadwal;
  final String jarak;

  DoctorModel({
    required this.id,
    required this.nama,
    required this.jenis,
    required this.tanggal,
    required this.jadwal,
    required this.jarak,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['nama'],
      nama: json['nama'],
      jenis: json['jenis'],
      tanggal: json['tanggal'],
      jadwal: json['jadwal'],
      jarak: json['jarak'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'jenis': jenis,
      'tanggal': tanggal,
      'jadwal': jadwal,
      'jarak': jarak,
    };
  }
}
