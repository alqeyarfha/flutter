import 'package:flutter/material.dart';

class Latihansatu extends StatelessWidget {
  const Latihansatu({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF3867E8), Color(0xFF5146E5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 76,
                height: 76,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.person,
                  size: 55,
                  color: Color(0xFF3867E8),
                ),
              ),

              const SizedBox(width: 16),

              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alqe Yarfha Nur Muslim',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'XII RPL 3',
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),

              const Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 28,
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF1557A6), Color(0xFF59B9E8)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Stack(
              children: [
                const Positioned(
                  right: 15,
                  top: 15,
                  child: Icon(
                    Icons.flutter_dash,
                    size: 100,
                    color: Colors.white24,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'TETAP SEMANGAT!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(height: 14),

                      const Text(
                        'Belajar Flutter!',
                        style: TextStyle(
                          fontSize: 27,
                          height: 1.15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Bangun aplikasi mulai dari fundamental!',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),

                      const Spacer(),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Mulai Belajar',
                              style: TextStyle(
                                color: Color(0xFF17346D),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF17346D),
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 30),

        Row(
          children: [
            SizedBox(width: 20),
            Text(
              "Skill Keahlian:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 31, 2, 244),
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.only(right: 20, left: 20, top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://cdn.brandfetch.io/domain/laravel.com/fallback/lettermark/theme/dark/h/400/w/400/icon?c=1bfwsmEH20zzEfSNTed',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 6,
                    top: 6,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 3,
                    top: 2,
                    child: Icon(Icons.check_circle, color: Colors.blue),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 3,
                    child: Text(
                      "Laravel",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.only(right: 20, left: 20, top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3KRF2KUVqHuSh4jJccD2jSJ7hAgRDt0AN9_kAQeDzZA&s=10',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 6,
                    top: 6,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 3,
                    top: 2,
                    child: Icon(Icons.check_circle, color: Colors.blue),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 3,
                    child: Text(
                      "Tailwind",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.only(right: 20, left: 20, top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5),
                image: DecorationImage(
                  image: NetworkImage(
                    'data:image/jpeg;base64,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',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 6,
                    top: 6,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 3,
                    top: 2,
                    child: Icon(Icons.check_circle, color: Colors.blue),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 3,
                    child: Text(
                      "Flutter",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
