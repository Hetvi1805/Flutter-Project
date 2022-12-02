import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  Apptext extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  Apptext ({Key? key,
    this.size=14,
    required this.text,
    this.color=Colors.black54}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          ),
    );
  }
}
