import 'package:alqe_flutter/navigation/about_page.dart';
import 'package:flutter/material.dart';

class ContohNav extends StatelessWidget {
  ContohNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AboutPage(
                          nama: 'Alqe yarfha Nur Muslim',
                          kelas: 'XII RPL 3',
                          umur: 17,
                        );
                      },
                    ),
                  );
                },
                child: const Text('Pindah Ke Halaman About'),
              ),
              
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/list');
                },
                child: const Text('Halaman Latihan List'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/container');
                },
                child: const Text('Latihan Container'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/grid');
                },
                child: const Text('Latihan Grid'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/latihan-row');
                },
                child: const Text('Latihan Row'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/latihan-satu');
                },
                child: const Text('Latihan Satu'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tugas-list');
                },
                child: const Text('Tugas List'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
