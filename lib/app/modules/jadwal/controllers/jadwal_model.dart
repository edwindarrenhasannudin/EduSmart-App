import 'package:cloud_firestore/cloud_firestore.dart';

class JadwalModel {
  final String id;
  final String mataKuliah;
  final String ruang;
  final DateTime jam;

  JadwalModel({
    required this.id,
    required this.mataKuliah,
    required this.ruang,
    required this.jam,
  });

  factory JadwalModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return JadwalModel(
      id: doc.id,
      mataKuliah: data['mata_kuliah'],
      ruang: data['ruang'],
      jam: (data['jam'] as Timestamp).toDate(),
    );
  }
}
