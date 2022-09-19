import 'package:flutter/material.dart';
class MySquare extends StatelessWidget{
  final String child;
  MySquare(this.child);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        color: Colors.deepPurple.shade100,
        child: Center(
          child: Text(
            child,
            style: const TextStyle(fontSize: 40),),
        ),
      ),
    );
  }

}