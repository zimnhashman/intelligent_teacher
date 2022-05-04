import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intelligent_teacher/userLearner/english/englishCategory.dart';

import 'englishComp4.dart';
import 'englishCompOneResult.dart';
import 'englishComprehensionOne.dart';

class EnglishQuestionAnswerFourResult extends StatefulWidget {
  EnglishQuestionAnswerFourResult({required this.question1Answer, required this.question2Answer,
    required this.question3Answer, required this.question4Answer, required this.question5Answer, required this.question6Answer, required this.mark});

  final String question1Answer;
  final String question2Answer;
  final String question3Answer;
  final String question4Answer;
  final String question5Answer;
  final String question6Answer;
  final int mark;



  @override
  _EnglishQuestionAnswerFourResultState createState() => _EnglishQuestionAnswerFourResultState();
}

class _EnglishQuestionAnswerFourResultState extends State<EnglishQuestionAnswerFourResult> {

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
            (widget.mark >= 5) ? Get.to(EnglishComprehensionFourSuccess()) : Get.to(EnglishComprehensionFourFailer());
          },
            child: Text('Continue', ),)
        ],
      ),
    );
  }
}







class EnglishComprehensionFourSuccess extends StatefulWidget {

  @override
  _EnglishComprehensionFourSuccessState createState() => _EnglishComprehensionFourSuccessState();
}

class _EnglishComprehensionFourSuccessState extends State<EnglishComprehensionFourSuccess> {
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
              ElevatedButton(onPressed: () => Get.to(EnglishQuestionAnswerFour()), child: Text('Redo')),

            ],
          ),
        ],
      ),
    );
  }
}





class EnglishComprehensionFourFailer extends StatefulWidget {
  const EnglishComprehensionFourFailer({Key? key}) : super(key: key);

  @override
  _EnglishComprehensionFourFailerState createState() => _EnglishComprehensionFourFailerState();
}

class _EnglishComprehensionFourFailerState extends State<EnglishComprehensionFourFailer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Please Try Again'),),
      body: Column(
        children: <Widget>[
          Text('You Tried Your Best!'),
          SizedBox(height: 15.0,),
          Text('Please Try the Exercise Again'),
          ElevatedButton(onPressed: () => Get.to(EnglishQuestionAnswerFour()), child: Text('Try Again'))

        ],
      ),

    );
  }
}
