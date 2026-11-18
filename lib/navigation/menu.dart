import 'package:alqe_flutter/navigation/about_page.dart';
import 'package:alqe_flutter/pages/album_page.dart';
import 'package:alqe_flutter/pages/formulir_input_page.dart';
import 'package:alqe_flutter/pages/latihan_formulir_input_page.dart';
// Pastikan path import file AlbumPage Anda sudah sesuai
// import 'package:alqe_flutter/pages/album_page.dart'; 
import 'package:flutter/material.dart';

class ContohNav extends StatelessWidget {
  const ContohNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Menu Navigasi Utama'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Header Kartu Sambutan
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue.shade600,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Halo, Alqe! 👋',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Silakan pilih menu latihan navigasi dan layout Flutter di bawah ini',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Kategori: Utama
          const Text(
            'Utama',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.person, color: Colors.indigo),
                  ),
                  title: const Text('Halaman About', style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: const Text('Navigasi dengan passing parameter data'),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(
                          nama: 'Alqe yarfha Nur Muslim',
                          kelas: 'XII RPL 3',
                          umur: 17,
                        ),
                      ),
                    );
                  },
                ),
                const Divider(height: 1),
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.assignment, color: Colors.red),
                  ),
                  title: const Text('Formulir Pendaftaran Ekskul', style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: const Text('Latihan Form, Validation, & Passing Data'),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FormEkskul(height: 0),
                      ),
                    );
                  },
                ),
                const Divider(height: 1),
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.train, color: Colors.blue),
                  ),
                  title: const Text('Pemesanan Tiket Kereta Api', style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: const Text('Formulir & E-Tiket Perjalanan'),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FormPemesananTiket(height: 0),
                      ),
                    );
                  },
                ),
                const Divider(height: 1),
                // Halaman Album (Integrasi API langsung menggunakan MaterialPageRoute)
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.album_rounded, color: Colors.blue),
                  ),
                  title: const Text('Halaman Album', style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: const Text('Menampilkan data album dari API'),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AlbumPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Kategori: List & Grid View
          const Text(
            'List & Grid View',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.grid_view, color: Colors.amber),
                  ),
                  title: const Text('Halaman Latihan Grid', style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: const Text('Eksplorasi GridView dasar'),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    Navigator.pushNamed(context, '/grid');
                  },
                ),
                const Divider(height: 1),
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.list_alt, color: Colors.green),
                  ),
                  title: const Text('Halaman Latihan List', style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: const Text('Implementasi ListView standar'),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    Navigator.pushNamed(context, '/list');
                  },
                ),
                const Divider(height: 1),
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.teal.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.assignment_turned_in, color: Colors.teal),
                  ),
                  title: const Text('Tugas List', style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: const Text('Implementasi tugas list data produk'),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    Navigator.pushNamed(context, '/tugas-list');
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Kategori: Layout & Komponen Lainnya
          const Text(
            'Layout & Komponen',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.crop_square, color: Colors.purple),
                  ),
                  title: const Text('Halaman Latihan Container', style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: const Text('Eksperimen styling dengan Container'),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    Navigator.pushNamed(context, '/container');
                  },
                ),
                const Divider(height: 1),
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.pink.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.view_column, color: Colors.pink),
                  ),
                  title: const Text('Halaman Latihan Row & Column', style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: const Text('Eksplorasi tata letak baris dan kolom'),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    Navigator.pushNamed(context, '/latihan-row');
                  },
                ),
                const Divider(height: 1),
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.star_border, color: Colors.orange),
                  ),
                  title: const Text('Latihan Satu', style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: const Text('Eksperimen layout dasar tambahan'),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    Navigator.pushNamed(context, '/latihan-satu');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}