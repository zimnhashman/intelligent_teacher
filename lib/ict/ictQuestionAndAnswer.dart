import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';


class QuestionAnswer extends StatefulWidget {



  @override
  _QuestionAnswerState createState() => _QuestionAnswerState();
}

class _QuestionAnswerState extends State<QuestionAnswer> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _questionKey = GlobalKey();
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
                autovalidateMode: AutovalidateMode.always, key: _questionKey,
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
                  if (_questionKey.currentState!.validate()){
                    debugPrint("The Answer is correct.");
                  } else {
                    return null;
                  }

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

