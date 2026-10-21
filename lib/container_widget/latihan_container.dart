import 'package:flutter/material.dart';

class LatihanContainer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 800,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 10),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 2),
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple, Colors.red],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
        image: DecorationImage(
          image: NetworkImage(
            "https://png.pngtree.com/background/20250522/original/pngtree-a-city-skyline-at-night-with-stars-in-the-sky-symbolizing-picture-image_16569586.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      transform: Matrix4.rotationX(0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Jutaan Bintang Di Malam Hari",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: const Color.fromARGB(255, 26, 149, 201),
            ),
          ),
          SizedBox(height: 480),
          Text(
            "Di bawah naungan malam yang hening, siluet megah gedung-gedung pencakar langit berdiri anggun menyambut hamparan langit biru pekat yang dipenuhi pijar ribuan bintang. Lembutnya gradasi cahaya pirus yang memancar dari garis cakrawala seolah memeluk kota dalam kehangatan ajaib, menciptakan simfoni visual yang begitu puitis, menawan, dan sarat akan ketenangan impian.",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              backgroundColor: const Color.fromARGB(255, 3, 159, 206),
            ),
          ),
        ],
      ),
    );
  }
}
