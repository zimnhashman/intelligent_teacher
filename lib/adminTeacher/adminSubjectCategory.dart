import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intelligent_teacher/adminTeacher/English/adminEnglish.dart';
import 'package:intelligent_teacher/userLearner/ict/ictQuestionAndAnswer.dart';

import 'Maths/adminMaths.dart';


class AdminCategories extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Admin Dashboard', style: TextStyle(
            fontSize: 20.0,
          ),),
          Row(
            children: [
              GestureDetector(
                onTap: () => Get.to(AdminEnglish()),
                child: Column(
                  children: [
                    Image.asset('asset/images/userLearner.english.jpg'),
                    Text('English', style: TextStyle(
                        fontSize: 20.0
                    ),),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () => Get.to(AdminMaths()),
                child: Column(
                  children: [
                    Image.asset('asset/images/mathematics.png'),
                    Text('Mathematics', style: TextStyle(
                        fontSize: 20.0
                    ),),

                  ],
                ),
              ),

              GestureDetector(
                onTap: () => Get.to(ICTQuestionAnswer()) ,
                child: Column(
                  children: [
                    Image.asset('asset/images/userLearner.ict.jpg',),
                    Text('ICT', style: TextStyle(
                        fontSize: 20.0
                    ),),


                  ],
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}

