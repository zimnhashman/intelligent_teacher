import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intelligent_teacher/userLearner/english/englishCategory.dart';

import 'englishComp3.dart';


class EnglishQuestionAnswerThreeResult extends StatefulWidget {
  EnglishQuestionAnswerThreeResult({required this.question1Answer, required this.question2Answer,
    required this.question3Answer, required this.question4Answer, required this.question5Answer, required this.mark});

  final String question1Answer;
  final String question2Answer;
  final String question3Answer;
  final String question4Answer;
  final String question5Answer;
  final int mark;



  @override
  _EnglishQuestionAnswerThreeResultState createState() => _EnglishQuestionAnswerThreeResultState();
}

class _EnglishQuestionAnswerThreeResultState extends State<EnglishQuestionAnswerThreeResult> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Chapter Result'),),
      body: Column(
        children: <Widget>[
          Text((widget.mark >= 5) ? 'You Have Successfully Completed the exercise' : 'Good Try. Please Try Again', style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 20.0,),
          Text(' ${widget.mark}/6', style: TextStyle(fontSize: 30.0, ),),
          SizedBox(height: 20.0,),
          ElevatedButton(onPressed: () {
            (widget.mark >= 5) ? Get.to(EnglishComprehensionThreeSuccess()) : Get.to(EnglishComprehensionThreeFailer());
          },
            child: Text('Continue', ),)
        ],
      ),
    );
  }
}







class EnglishComprehensionThreeSuccess extends StatefulWidget {

  @override
  _EnglishComprehensionThreeSuccessState createState() => _EnglishComprehensionThreeSuccessState();
}

class _EnglishComprehensionThreeSuccessState extends State<EnglishComprehensionThreeSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Options'),),
      body: Column(
        children: <Widget>[
          Text('Do you Want to Redo The Exercise Again or Try Another One'),
          SizedBox(height: 20.0,),
          Row(
            children: <Widget>[
              ElevatedButton(onPressed: () => Get.to(UserEnglishSelector()), child: Text('Try Another One')),
              SizedBox(width: 20.0,),
              ElevatedButton(onPressed: () => Get.to(EnglishQuestionAnswerThree()), child: Text('Redo')),

            ],
          ),
        ],
      ),
    );
  }
}





class EnglishComprehensionThreeFailer extends StatefulWidget {
  const EnglishComprehensionThreeFailer({Key? key}) : super(key: key);

  @override
  _EnglishComprehensionThreeFailerState createState() => _EnglishComprehensionThreeFailerState();
}

class _EnglishComprehensionThreeFailerState extends State<EnglishComprehensionThreeFailer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Please Try Again'),),
      body: Column(
        children: <Widget>[
          Text('You Tried Your Best!'),
          SizedBox(height: 15.0,),
          Text('Please Try the Exercise Again'),
          ElevatedButton(onPressed: () => Get.to(EnglishQuestionAnswerThree()), child: Text('Try Again'))

        ],
      ),

    );
  }
}
