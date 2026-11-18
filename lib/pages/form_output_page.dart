import 'package:flutter/material.dart';

class HasilPage extends StatelessWidget {
  final String nama, email, ekskul, gender, tglDaftar;

  const HasilPage({
    super.key,
    required this.nama,
    required this.email,
    required this.ekskul,
    required this.gender, 
    required this.tglDaftar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil Pendaftaran')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: $nama'),
            Text('Email: $email'),
            Text('Tanggal Daftar: $tglDaftar'),
            Text('Ekskul: $ekskul'),
            Text('Jenis kelamin: $gender'),
          ],
        ),
      ),
    );
  }
}