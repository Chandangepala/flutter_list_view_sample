import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget{
  final String child;
  MyCircle(this.child);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.lightGreenAccent,
        ),
        child: Center(
          child: Text(
            child,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }

}