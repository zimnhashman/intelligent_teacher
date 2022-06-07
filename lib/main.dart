import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:intelligent_teacher/adminTeacher/English/UploadContent/uploadContent.dart';
import 'package:intelligent_teacher/auth/registrationPage.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';

import 'adminTeacher/English/UploadContent/uploadEnglishPDF.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  WebView.platform = WebWebViewPlatform();
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
      home: UploadEnglishPDF(),
    );
  }
}

