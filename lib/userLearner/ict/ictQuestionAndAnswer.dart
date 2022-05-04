import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';


class ICTQuestionAnswer extends StatefulWidget {



  @override
  _ICTQuestionAnswerState createState() => _ICTQuestionAnswerState();
}

class _ICTQuestionAnswerState extends State<ICTQuestionAnswer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter Quiz'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Whats is the brain of the computer?'
            ),
            Divider(),
            Form(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Put In the Correct Answer Here!",
                  labelStyle: TextStyle(color: Colors.blueGrey)
                ),

                validator: (value) {
                  if (value!.contains("CPU")) {
                    return "Answer Is correct";
                  } else {
                    return null;
                  }
                }),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {


                }, child: Text(
                'SUBMIT'
              ),
              ),



            ),
          ],
        ),
      ),
    );
  }
}
