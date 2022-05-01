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
           keyboardType: TextInputType.text,
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
           keyboardType: TextInputType.text,
           controller: _comprehensionPassageController,
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


        ElevatedButton(onPressed: () {
          var _comprehensionPassage = _comprehensionPassageController.text;
          var _comprehensionTitle =  _comprehensionTitleController.text;
          Get.to(EnglishQuestions(comprehensionPassage: _comprehensionPassage, comprehensionTitle: _comprehensionTitle));

        }, child: Text('Next'))
       ],
      ),

    );
  }
}


class EnglishQuestions extends StatelessWidget {
  EnglishQuestions({required this.comprehensionPassage, required this.comprehensionTitle});


  String comprehensionPassage;
  String comprehensionTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Question Type'),
      ),
      body: Column(
        children: [
         Text(comprehensionTitle),
          SizedBox(height: 20.0,),
          Divider(),
          Text(comprehensionPassage),
          SizedBox(height: 20.0,),
          Divider(),
          Text('Questions Type',style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20.0,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () => {}, child: Text('Written'),),
                SizedBox(width: 20.0,),
                ElevatedButton(onPressed: () => {}, child: Text('Multiple Choice')),
                SizedBox(width: 20.0,),
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