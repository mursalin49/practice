import 'package:flutter/material.dart';
import 'package:practice/view/widgets/custom_text/custom_text.dart';

class CustomButton extends StatelessWidget {
   const CustomButton(
      {super.key,
        this.height = 48,
        this.width = double.maxFinite,
        required this.onTap,
        this.title = "submit",
        this.marginVerticel = 0,
        this.marginHorizontal = 0, this.backgroundColor , required this.name, this.textColor = Colors.white});

  final double height;
  final double width;

  final VoidCallback onTap;

  final String title;
  final String name;
  final Color? backgroundColor;
  final Color textColor;

  final double marginVerticel;
  final double marginHorizontal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: marginVerticel, horizontal: marginHorizontal),
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: backgroundColor ?? Color(0xff84C000)),
        child: CustomText(name: name,color: textColor,),
      ),
    );
  }
}
//