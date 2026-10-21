import 'package:alqe_flutter/row_column.dart/latihan_row_widget.dart';
import 'package:flutter/material.dart';

//bagian main app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar flutter"),
          backgroundColor: const Color.fromARGB(255, 249, 248, 250),
        ),
        body: const LatihanLayoutDua(),
      ),
    );
  }
}


class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "hello flutter",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.amber,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
