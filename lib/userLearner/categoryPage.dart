import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intelligent_teacher/userLearner/english/englishCategory.dart';
import 'package:intelligent_teacher/userLearner/ict/ictQuestionAndAnswer.dart';

import 'maths/mathsQuestions.dart';


class Categories extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Get.to(
              UserEnglishSelector()
            ),
            child: Column(
              children: [
                Image.asset('asset/images/english.jpg'),
                Text('English', style: TextStyle(
                  fontSize: 20.0
                ),),
              ],
            ),
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
            onTap: () => Get.to(ICTQuestionAnswer()) ,
            child: Column(
              children: [
                Image.asset('asset/images/ict.jpg',),
                Text('ICT', style: TextStyle(
                    fontSize: 20.0
                ),),

              ],
            ),
          ),

          SizedBox(width: 20.0,),

          GestureDetector(
            onTap: () => Get.to(MathsQuestionAnswer()) ,
            child: Column(
              children: [
                Image.asset('asset/images/ict.jpg',),
                Text('Mathematics', style: TextStyle(
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
