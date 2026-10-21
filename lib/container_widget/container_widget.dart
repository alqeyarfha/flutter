import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 2),
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.purple,
            Colors.red],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
        image: DecorationImage(
          image: NetworkImage(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHOX-m0MfmayLOYqxlQeb9aozzT6jO-VNkUp8nVp8bvw&s=10"),      fit: BoxFit.cover,
        ),
      ),
      transform: Matrix4.rotationX(0.2),
      child: Center(child: Text("MY MBG")) ,
    );
  }
}