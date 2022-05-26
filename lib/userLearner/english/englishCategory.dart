import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intelligent_teacher/questionStorage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'englishComp3.dart';
import 'englishComp4.dart';
import 'englishComprehension2.dart';
import 'englishComprehensionOne.dart';

class UserEnglishSelector extends StatefulWidget {

  @override
  _UserEnglishSelectorState createState() => _UserEnglishSelectorState();
}


// Future init() async {
//
//   QuestionStorage.readQuestion3();
//   QuestionStorage.readQuestion4();
// }
class _UserEnglishSelectorState extends State<UserEnglishSelector> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('English Exercises'),),
      body: FutureBuilder<dynamic>(
        future: QuestionStorage.readQuestion3(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData == true) {
            return Column(
              children: [
                Text('Select The Exercise You Want to Attempt', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        SystemSound.play(SystemSoundType.click);
                        Get.to(EnglishQuestionAnswerOne());
                      },
                      child: Container(
                        child: Text('1', style: TextStyle(
                          fontSize: 18.0,
                        ),),
                      ),
                    ),

                    SizedBox(width: 20.0,),

                    GestureDetector(
                      onTap: () {
                        SystemSound.play(SystemSoundType.click);
                        Get.to(EnglishQuestionAnswerTwo());
                      },
                      child: Container(
                        child: Text('2', style: TextStyle(
                            fontSize: 18.0
                        ),),
                      ),
                    ),

                    SizedBox(width: 20.0,),

                    GestureDetector(
                      onTap: () =>
                      {
                        SystemSound.play(SystemSoundType.click),
                        Get.to(EnglishQuestionAnswerThree())},
                      child: Container(
                        child: Text('3', style: TextStyle(
                            fontSize: 18.0
                        ),),
                      ),
                    ),

                    SizedBox(width: 20.0,),

                    GestureDetector(
                      onTap: () {
                        SystemSound.play(SystemSoundType.click);
                        Get.to(EnglishQuestionAnswerFour());
                      },
                      child: Container(
                        child: Text('4', style: TextStyle(
                            fontSize: 18.0
                        ),),
                      ),
                    ),

                  ],
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Text('Select The Exercise You Want to Attempt', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        SystemSound.play(SystemSoundType.click);
                        Get.to(EnglishQuestionAnswerOne());
                      },
                      child: Container(
                        child: Text('1', style: TextStyle(
                          fontSize: 18.0,
                        ),),
                      ),
                    ),

                    SizedBox(width: 20.0,),

                    GestureDetector(
                      onTap: () {
                        SystemSound.play(SystemSoundType.click);
                        Get.to(EnglishQuestionAnswerTwo());
                      },
                      child: Container(
                        child: Text('2', style: TextStyle(
                            fontSize: 18.0
                        ),),
                      ),
                    ),
                  ],
                ),
              ],
            );
          }
        },
      )

    );
  }
}
