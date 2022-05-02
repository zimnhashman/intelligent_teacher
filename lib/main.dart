import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:intelligent_teacher/userLearner/categoryPage.dart';
import 'package:intelligent_teacher/userLearner/english/englishComprehensionOne.dart';
import 'package:intelligent_teacher/loginPage.dart';
import 'package:intelligent_teacher/userLearner/ict/ictQuestionAndAnswer.dart';
import 'adminTeacher/English/addQuestions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Intelligent Teacher',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: EnglishQuestionAnswerOne(),

    );
  }
}

