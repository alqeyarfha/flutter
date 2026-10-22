import 'package:flutter/material.dart';

class Expendedwisget extends StatelessWidget {
  const Expendedwisget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 50, color: Colors.amber),

        Expanded(
          flex: 1,
          child: Container(
            height: 50,
            color: const Color.fromARGB(255, 255, 0, 0),
            ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 50,
            color: const Color.fromARGB(255, 18, 166, 65),
            ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 50,
            color: const Color.fromARGB(255, 251, 255, 3),
            ),
        ),
      ],
    );
  }
}