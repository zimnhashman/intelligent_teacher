import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnglishQuestionAnswerOneResult extends StatefulWidget {
EnglishQuestionAnswerOneResult({required this.question1Answer, required this.question2Answer,
  required this.question3Answer, required this.question4Answer, required this.question5Answer, required this.question6Answer, required this.mark});

final String question1Answer;
final String question2Answer;
final String question3Answer;
final String question4Answer;
final String question5Answer;
final String question6Answer;
final int mark;



  @override
  _EnglishQuestionAnswerOneResultState createState() => _EnglishQuestionAnswerOneResultState();
}

class _EnglishQuestionAnswerOneResultState extends State<EnglishQuestionAnswerOneResult> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Chapter Result'),),
      body: Column(
        children: <Widget>[
        Text('${widget.mark}', style: TextStyle(fontSize: 30.0),)
        ],
    ),
    );
  }
}










class EnglishComprehensionOneSuccess extends StatefulWidget {
  const EnglishComprehensionOneSuccess({Key? key}) : super(key: key);

  @override
  _EnglishComprehensionOneSuccessState createState() => _EnglishComprehensionOneSuccessState();
}

class _EnglishComprehensionOneSuccessState extends State<EnglishComprehensionOneSuccess> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}









class EnglishComprehensionTwoFailer extends StatefulWidget {
  const EnglishComprehensionTwoFailer({Key? key}) : super(key: key);

  @override
  _EnglishComprehensionTwoFailerState createState() => _EnglishComprehensionTwoFailerState();
}

class _EnglishComprehensionTwoFailerState extends State<EnglishComprehensionTwoFailer> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
