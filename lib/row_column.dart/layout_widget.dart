import 'package:flutter/material.dart';

class LayoutRowWidget extends StatelessWidget {
  const LayoutRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      width: double.infinity,
      height: 100,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.call, size: 48), Text("Call")],
          ),
          Column(
            mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.share, size: 48), Text("Share")],
          ),
          Column(
            mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.navigation, size: 48), Text("Navigation")],
          )
        ],
      ),
    ),);
  }
}