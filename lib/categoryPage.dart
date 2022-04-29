import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intelligent_teacher/ict/ictQuestionAndAnswer.dart';


class Categorization extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Image.asset('asset/images/english.jpg'),
              Text('English', style: TextStyle(
                fontSize: 20.0
              ),),
            ],
          ),

          Column(
            children: [
              Image.asset('asset/images/familyHeritage.jpg'),
              Text('Family Heritage', style: TextStyle(
                  fontSize: 20.0
              ),),

            ],
          ),

          GestureDetector(
            onTap: () => Get.to(QuestionAnswer()) ,
            child: Column(
              children: [
                Image.asset('asset/images/ict.jpg',),
                Text('ICT', style: TextStyle(
                    fontSize: 20.0
                ),),


              ],
            ),
          ),


    ],
      ),
    );
  }
}