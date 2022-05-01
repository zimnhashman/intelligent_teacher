import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intelligent_teacher/adminTeacher/adminDrawer.dart';


class AdminEnglishAdd extends StatefulWidget {

  @override
  _AdminEnglishAddState createState() => _AdminEnglishAddState();
}

class _AdminEnglishAddState extends State<AdminEnglishAdd> {
  TextEditingController _comprehensionPassageController = new TextEditingController();

  TextEditingController _comprehensionTitleController = new TextEditingController();

  var comprehensionPassage;

  var comprehensionTitle;

  var answerType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Question'),),
      drawer: AppDrawer(),
      body: Column(
       children: <Widget>[
         Text('Add Comprehension Title', style: TextStyle(fontSize: 22),),
         TextField(
           onChanged: (value) {
             value = comprehensionTitle;
           },
           controller: _comprehensionTitleController,
           textAlign: TextAlign.center,
           decoration: InputDecoration(
             border: OutlineInputBorder(
               borderSide: const BorderSide(color: Colors.blue, width: 2.0),
               borderRadius: BorderRadius.circular(25.0),
             ),
             hintText: 'Enter Comprehension Title Here',
               hintStyle: TextStyle(color: Colors.grey),
           ),
           ),

         Text('Add Comprehension Passage', style: TextStyle(fontSize: 22),),
         TextField(
           controller: _comprehensionPassageController,
           onChanged: (value1) {
             value1 = comprehensionPassage;
           },
           textAlign: TextAlign.center,
           decoration: InputDecoration(
             border: OutlineInputBorder(
               borderSide: const BorderSide(color: Colors.blue, width: 2.0),
               borderRadius: BorderRadius.circular(25.0),
             ),
             hintText: 'Enter Comprehension Passage Here',
             hintStyle: TextStyle(color: Colors.grey),
           ),
         ),
        SizedBox(height: 30.0),


        ElevatedButton(onPressed: () => print(comprehensionPassage), child: Text('Next'))
       ],
      ),

    );
  }
}


class EnglishQuestions extends StatelessWidget {
  EnglishQuestions({required this.answerType, required this.comprehensionPassage, required this.comprehensionTitle});


  String comprehensionPassage;
  String comprehensionTitle;
  bool answerType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Text(comprehensionTitle),
          Divider(),
          Text(comprehensionPassage),
          Container(
            child: Row(
              children: [
                ElevatedButton(onPressed: () => {}, child: Text('Written'),),
                ElevatedButton(onPressed: () => {}, child: Text('Multiple Choice')),
                ElevatedButton(onPressed: () => {}, child: Text('Yes Or No')),

              ],
            ),
          )
        ],
      ),
    );
  }

}

class ModelLogic {

}