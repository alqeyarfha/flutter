import 'package:alqe_flutter/pages/form_output_page.dart';
import 'package:alqe_flutter/pages/latihan_output_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormPemesananTiket extends StatefulWidget {
  const FormPemesananTiket({super.key, required this.height});

  final double height;

  @override
  State<FormPemesananTiket> createState() => _FormPemesananTiketState();
}

class _FormPemesananTiketState extends State<FormPemesananTiket> {
  final _formKey = GlobalKey<FormState>();
  final _namaC = TextEditingController();
  final _tglBerangkatC = TextEditingController();

  String? _kotaAsal;
  String? _kotaTujuan;
  String? _jamBerangkat;
  String? _zonaWaktu;
  String _kelasKereta = 'Ekonomi';
  int _jumlahPenumpang = 1; // Variabel angka untuk jumlah penumpang
  bool _syaratKetentuan = false;

  final List<String> _daftarJam = List.generate(
    25,
    (index) => '${index.toString().padLeft(2, '0')}:00',
  );

  @override
  void initState() {
    _tglBerangkatC.text = '';
    super.initState();
  }

  @override
  void dispose() {
    _namaC.dispose();
    _tglBerangkatC.dispose();
    super.dispose();
  }

  void _pesanTiket() {
    if (_formKey.currentState!.validate()) {
      if (!_syaratKetentuan) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Anda harus menyetujui syarat & ketentuan')),
        );
        return;
      }

      int hargaSatuan = _kelasKereta == 'Ekonomi' ? 100000 : 250000;
      int totalHarga = hargaSatuan * _jumlahPenumpang;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => HasilTiketPage(
            nama: _namaC.text,
            kotaAsal: _kotaAsal!,
            kotaTujuan: _kotaTujuan!,
            kelas: _kelasKereta,
            jumlahPenumpang: _jumlahPenumpang,
            tglBerangkat: _tglBerangkatC.text,
            jamBerangkat: _jamBerangkat!,
            zonaWaktu: _zonaWaktu!,
            hargaSatuan: hargaSatuan,
            totalHarga: totalHarga,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pesan Tiket Perjalanan')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _namaC,
                decoration: const InputDecoration(
                  labelText: 'Nama Pemesan',
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) return 'Nama tidak boleh kosong';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _kotaAsal,
                decoration: const InputDecoration(
                  labelText: 'Kota Asal',
                  border: OutlineInputBorder(),
                ),
                items: ['Bandung', 'Jakarta', 'Surabaya', 'Yogyakarta']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (v) => setState(() => _kotaAsal = v),
                validator: (v) => v == null ? 'Pilih kota asal' : null,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _kotaTujuan,
                decoration: const InputDecoration(
                  labelText: 'Kota Tujuan',
                  border: OutlineInputBorder(),
                ),
                items: ['Bandung', 'Jakarta', 'Surabaya', 'Yogyakarta']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (v) => setState(() => _kotaTujuan = v),
                validator: (v) => v == null ? 'Pilih kota tujuan' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _tglBerangkatC,
                decoration: const InputDecoration(
                  labelText: 'Tanggal Keberangkatan',
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2023),
                    lastDate: DateTime(2030),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      _tglBerangkatC.text = DateFormat('yyyy-MM-dd').format(pickedDate);
                    });
                  }
                },
                validator: (v) => v!.isEmpty ? 'Pilih tanggal keberangkatan' : null,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _jamBerangkat,
                decoration: const InputDecoration(
                  labelText: 'Jam Keberangkatan',
                  border: OutlineInputBorder(),
                ),
                items: _daftarJam
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (v) => setState(() => _jamBerangkat = v),
                validator: (v) => v == null ? 'Pilih jam keberangkatan' : null,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _zonaWaktu,
                decoration: const InputDecoration(
                  labelText: 'Zona Waktu',
                  border: OutlineInputBorder(),
                ),
                items: ['WIB', 'WITA', 'WIT']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (v) => setState(() => _zonaWaktu = v),
                validator: (v) => v == null ? 'Pilih zona waktu' : null,
              ),
              const SizedBox(height: 16),
              const Text('Kelas Kereta:'),
              RadioListTile<String>(
                title: const Text('Ekonomi (Rp 100.000 / orang)'),
                value: 'Ekonomi',
                groupValue: _kelasKereta,
                onChanged: (v) => setState(() => _kelasKereta = v!),
              ),
              RadioListTile<String>(
                title: const Text('Eksekutif (Rp 250.000 / orang)'),
                value: 'Eksekutif',
                groupValue: _kelasKereta,
                onChanged: (v) => setState(() => _kelasKereta = v!),
              ),
              const SizedBox(height: 16),

              // Bagian Jumlah Penumpang dengan Tombol Tambah & Kurang
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Jumlah Penumpang:', style: TextStyle(fontSize: 16)),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove_circle_outline),
                          onPressed: () {
                            setState(() {
                              if (_jumlahPenumpang > 1) {
                                _jumlahPenumpang--;
                              }
                            });
                          },
                        ),
                        Text(
                          '$_jumlahPenumpang',
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle_outline),
                          onPressed: () {
                            setState(() {
                              _jumlahPenumpang++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
              CheckboxListTile(
                title: const Text('Setuju dengan syarat dan ketentuan'),
                value: _syaratKetentuan,
                onChanged: (v) => setState(() => _syaratKetentuan = v!),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _pesanTiket,
                child: const Text('Pesan Tiket'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}