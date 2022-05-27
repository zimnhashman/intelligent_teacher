import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intelligent_teacher/adminTeacher/adminDrawer.dart';
import 'package:intelligent_teacher/adminTeacher/English/addQuestions.dart';

class  AdminEnglish extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => Get.to(AdminEnglishAdd()),
                child: Container(
                  child: Column(
                    children: [
                      Icon(Icons.queue, size: 30.0,),
                      Text('Add Questions')
                    ],
                  ),
                ),
              ),

              Container(
                child: Column(
                  children: [
                    Icon(Icons.queue, size: 30.0,),
                    Text('View Questions')
                  ],
                ),
              ),

              Container(
                child: Column(
                  children: [
                    Icon(Icons.queue, size: 30.0,),
                    Text('Delete Questions')
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
