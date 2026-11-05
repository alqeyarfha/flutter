import 'package:flutter/material.dart';

class ListSeparated extends StatelessWidget {
  ListSeparated({super.key});

  var partai = ["Golongan Karya", "PDIP", "DEMOKRAT", "PKB"];
  var partaiColor = [Colors.yellow, Colors.red, Colors.blue, Colors.green];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: partai.length,
        itemBuilder: (context, index) {
          return Container(
            height: 400,
            color: partaiColor[index],
            child: Center(child: Text(partai[index].toString())),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.black,
            height: 10,
            indent: 90,
            endIndent: 90,
          );
        },
      ),
    );
  }
}