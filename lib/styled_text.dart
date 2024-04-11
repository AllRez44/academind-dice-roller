import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text, this.color = Colors.black});

  final String text;
  final Color color;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 28),
    );
  }
}