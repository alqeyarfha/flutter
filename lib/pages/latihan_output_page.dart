import 'package:flutter/material.dart';

class HasilTiketPage extends StatelessWidget {
  final String nama, kotaAsal, kotaTujuan, kelas, tglBerangkat, jamBerangkat, zonaWaktu;
  final int jumlahPenumpang, hargaSatuan, totalHarga;

  const HasilTiketPage({
    super.key,
    required this.nama,
    required this.kotaAsal,
    required this.kotaTujuan,
    required this.kelas,
    required this.jumlahPenumpang,
    required this.tglBerangkat,
    required this.jamBerangkat,
    required this.zonaWaktu,
    required this.hargaSatuan,
    required this.totalHarga,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('E-Tiket Perjalanan')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'BUKTI PEMESANAN TIKET',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            const SizedBox(height: 10),
            Text('Nama Pemesan: $nama'),
            const SizedBox(height: 8),
            Text('Kota Asal: $kotaAsal'),
            const SizedBox(height: 8),
            Text('Kota Tujuan: $kotaTujuan'),
            const SizedBox(height: 8),
            Text('Tanggal Berangkat: $tglBerangkat'),
            const SizedBox(height: 8),
            Text('Jam Keberangkatan: $jamBerangkat $zonaWaktu'),
            const SizedBox(height: 8),
            Text('Kelas Kereta: $kelas'),
            const SizedBox(height: 8),
            Text('Harga Tiket: Rp $hargaSatuan'),
            const SizedBox(height: 8),
            Text('Jumlah Penumpang: $jumlahPenumpang Orang'),
            const Divider(),
            const SizedBox(height: 8),
            Text(
              'Total Bayar: Rp $totalHarga',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali ke Menu'),
            ),
          ],
        ),
      ),
    );
  }
}