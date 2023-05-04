
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({Key? key, required this.child}) : super(key: key);
  final String child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Colors.purpleAccent),
        child: Center(child: Text(child)),
      ),
    );
  }
}
