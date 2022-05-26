import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intelligent_teacher/questionStorage.dart';
import 'englishComp3.dart';
import 'englishComp4.dart';
import 'englishComprehension2.dart';
import 'englishComprehensionOne.dart';

class UserEnglishSelector extends StatefulWidget {
  const UserEnglishSelector({Key? key}) : super(key: key);

  @override
  _UserEnglishSelectorState createState() => _UserEnglishSelectorState();
}

Future init() async {

  QuestionStorage.readQuestion3();
  QuestionStorage.readQuestion4();
}


class _UserEnglishSelectorState extends State<UserEnglishSelector> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('English Exercises'),),
      body: Column(
        children: <Widget>[
          Text('Select The Exercise You Want to Attempt', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),),

          QuestionStorage.readQuestion3() || QuestionStorage.readQuestion4() == 'true' ?
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () => Get.to(EnglishQuestionAnswerOne()),
                child: Container(
                  child: Text('1', style: TextStyle(
                    fontSize: 18.0,
                  ),),
                ),
              ),

              SizedBox(width: 20.0,),

              GestureDetector(
                onTap: () => Get.to(EnglishQuestionAnswerTwo()),
                child: Container(
                  child: Text('2', style: TextStyle(
                    fontSize: 18.0
                  ),),
                ),
              ),

              SizedBox(width: 20.0,),

              GestureDetector(
                onTap: () => Get.to(EnglishQuestionAnswerThree()),
                child: Container(
                  child: Text('3', style: TextStyle(
                      fontSize: 18.0
                  ),),
                ),
              ),

              SizedBox(width: 20.0,),

              GestureDetector(
                onTap: () => Get.to(EnglishQuestionAnswerFour()),
                child: Container(
                  child: Text('4', style: TextStyle(
                      fontSize: 18.0
                  ),),
                ),
              ),

            ],
          )
              :

          //Widget If Comprehensions are available in Global State

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('1', style: TextStyle(
                  fontSize: 18.0,
                ),),
              ),

              SizedBox(width: 20.0,),

              Container(
                child: Text('2', style: TextStyle(
                    fontSize: 18.0
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
