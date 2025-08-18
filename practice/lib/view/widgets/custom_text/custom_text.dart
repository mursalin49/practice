import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
    const CustomText({super.key, required this.name, this.fontWeight = FontWeight.w400,this.color =Colors.black});

    final String name;
    final FontWeight fontWeight;
    final Color color;

  @override
  Widget build(BuildContext context) {
    return  Text(
      name,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: 18,
        color: color,
        letterSpacing: 1,
      ),
    );
  }
}
