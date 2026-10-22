import 'package:flutter/material.dart';

class Latihansatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(height: 140, color: const Color.fromARGB(255, 0, 60, 240)),
            Positioned(
              bottom: 30,
              left: 20,
              child: SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                 radius: 36,
                 child: Icon(Icons.person,size: 40, color: const Color.fromARGB(255, 0, 115, 255)),

                 ),
                
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Alqe"), Text("XII RPL 3")],
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Follow")),
      ],
    );
  }
}
