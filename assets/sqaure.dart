import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  const MySquare({Key? key, required this.child }) : super(key: key);
 // const MySquare({Key? key}) : super(key: key);
  final String child;


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          height: 200,
          color: Colors.purple,
          child: Text(child,),

        ));
  }
}
