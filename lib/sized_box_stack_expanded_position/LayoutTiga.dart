import 'package:flutter/material.dart';

class KartuDashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 80,
              color: Colors.blue[100],
              alignment: Alignment.center,
              child: Text("pemasukan"),
           ),
         ),
         SizedBox(width: 10),
         Expanded(
            child: Container(
              height: 80,
              color: Colors.green[100],
              alignment: Alignment.center,
              child: Text("pengeluaran"),
           ),
         ),
         SizedBox(width: 10),
         Expanded(
            child: Container(
              height: 80,
              color: const Color.fromARGB(255, 165, 180, 38),
              alignment: Alignment.center,
              child: Text("saldo"),
           ),
         ),
        ],
      ),
    );
  }
}