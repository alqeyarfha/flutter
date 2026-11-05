import 'package:flutter/material.dart';

class GridGalerifoto extends StatelessWidget {
  GridGalerifoto({super.key});

  final List<Map<String, dynamic>> galeriFoto = [
    {
      'nama': 'Pantai',
      'imageUrl': 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=800&q=80',
      'deskripsi': 'Pantai dengan pasir putih dan air laut biru.',
      'lokasi': 'Bali',
      'favorit': true,
    },
    {
      'nama': 'Gunung',
      'imageUrl': 'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?auto=format&fit=crop&w=800&q=80',
      'deskripsi': 'Pemandangan gunung yang sejuk dan indah.',
      'lokasi': 'Bandung',
      'favorit': false,
    },
    {
      'nama': 'Kota',
      'imageUrl': 'https://images.unsplash.com/photo-1493246507139-91e8fad9978e?auto=format&fit=crop&w=800&q=80',
      'deskripsi': 'Kota modern dengan gedung pencakar langit.',
      'lokasi': 'Jakarta',
      'favorit': true,
    },
    {
      'nama': 'Hutan',
      'imageUrl': 'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?auto=format&fit=crop&w=800&q=80',
      'deskripsi': 'Hutan hijau yang asri dan menenangkan.',
      'lokasi': 'Raja Ampat',
      'favorit': false,
    },
    {
      'nama': 'Danau',
      'imageUrl': 'https://images.unsplash.com/photo-1501785888041-af3ef285b470?auto=format&fit=crop&w=800&q=80',
      'deskripsi': 'Danau tenang dengan pemandangan alam yang indah.',
      'lokasi': 'Danau Toba',
      'favorit': true,
    },
    {
      'nama': 'Sungai',
      'imageUrl': 'https://images.unsplash.com/photo-1470770841072-f978cf4d019e?auto=format&fit=crop&w=800&q=80',
      'deskripsi': 'Sungai yang mengalir di antara pepohonan.',
      'lokasi': 'Papua',
      'favorit': false,
    },
    {
      'nama': 'Desert',
      'imageUrl': 'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=800&q=80',
      'deskripsi': 'Gurun yang luas dengan panorama eksotis.',
      'lokasi': 'Arab Saudi',
      'favorit': true,
    },
    {
      'nama': 'Pemandangan',
      'imageUrl': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
      'deskripsi': 'Pemandangan alam yang memanjakan mata.',
      'lokasi': 'Lombok',
      'favorit': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galeri Foto"),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: galeriFoto.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            final data = galeriFoto[index];

            return Card(
              clipBehavior: Clip.antiAlias,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.network(
                            data['imageUrl'],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        
                        Positioned(
                          top: 10,
                          right: 10,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white.withOpacity(0.8),
                            child: Icon(
                              data['favorit']
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: data['favorit'] ? Colors.red : Colors.grey,
                              size: 18,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 10,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.35),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  data['lokasi'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['nama'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          data['deskripsi'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12,
                            height: 1.4,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
