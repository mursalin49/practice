import 'package:flutter/material.dart';
import 'package:practice/view/widgets/custom_container/custom_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Map<String, String>> cardList = [
    {"title": "I am Nadim hasan", "description": "Hello "},
    {"title": "I am Soheb hasan", "description": "Hello "},
    {"title": "hi", "description": "name"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Practice')),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),

        /* child: Column(
          children: [
            // Text(
            //   'Nadim',
            //   style: TextStyle(
            //     fontWeight: FontWeight.w600,
            //     fontSize: 18,
            //     color: Colors.red,
            //     letterSpacing: 1,
            //   ),// ),
            CustomText(name: 'Hasan',fontWeight: FontWeight.w700,color: Colors.red,),

            TextFormField(
              style: TextStyle(
                color: Colors.green
              ),
              decoration: InputDecoration(
                hintText: 'Email'
              ),
            ),

            Gap(16),
            CustomButton(onTap: (){}, name: "Submit",)
          ],
        ),*/
        child: Column(
          children: List.generate(cardList.length, (index) {
            return CustomContainer(
              title: cardList[index]['title'] ?? "",
              description: cardList[index]["description"] ?? "",
            );
          }),
        ),
      ),
    );
  }
}
