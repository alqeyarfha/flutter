import 'package:flutter/material.dart';

class KartuProfil extends StatelessWidget {
  const KartuProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 75,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 248, 248, 248),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://png.pngtree.com/background/20250522/original/pngtree-a-city-skyline-at-night-with-stars-in-the-sky-symbolizing-picture-image_16569586.jpg"),
              ),
            ),
            SizedBox(width: 12),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Alqe yarfha"),
              SizedBox(height: 4),
              Text("XII RPL 3"),
              ],
             ),
            )
          ],
        ),
      ),
    );
  }
}