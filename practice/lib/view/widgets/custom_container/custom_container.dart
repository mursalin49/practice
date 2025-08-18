import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../custom_text/custom_text.dart' show CustomText;

class CustomContainer extends StatelessWidget {
    CustomContainer({super.key, required this.title, required this.description});

    final String title;
    final String description;

  @override
  Widget build(BuildContext context) {
    return    Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///<====================== title ========================>
          CustomText(name: 'Title',fontWeight: FontWeight.w700,),
          CustomText(name: title),

          Gap(12),

          ///====================== description ========================
          CustomText(name: 'Description',fontWeight: FontWeight.w700,),
          CustomText(
            name: description,
          )
        ],
      ),
    );
  }
}
