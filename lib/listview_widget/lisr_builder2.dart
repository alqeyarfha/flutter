import 'package:flutter/material.dart';

class ListBuilder2 extends StatelessWidget {
  ListBuilder2({super.key});

  final List<Map<String, dynamic>> siswa = [
    {'nama': 'Abdul', 'kelas': 'XII RPL 1', 'umur': 18},
    {'nama': 'Budi', 'kelas': 'XII RPL 2', 'umur': 17},
    {'nama': 'Citra', 'kelas': 'XII RPL 3', 'umur': 18},
    {'nama': 'Dewi', 'kelas': 'XII RPL 3', 'umur': 17},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: siswa.length,
      itemBuilder: (context, index) {
        final data = siswa[index];
        return Card(
          margin: EdgeInsets.all(16),
          child: ListTile(
            leading: CircleAvatar(child: Text(data['nama'][0])),
            title: Text(data['nama']),
            subtitle: Text(
              "Kelas: ${data['kelas']} ${data['umur'].toString()} Tahun",
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        );
      },
    );
  }
}
