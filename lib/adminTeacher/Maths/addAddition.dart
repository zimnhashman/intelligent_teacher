import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAddition extends StatefulWidget {
  const AddAddition({Key? key}) : super(key: key);

  @override
  _AddAdditionState createState() => _AddAdditionState();
}

class _AddAdditionState extends State<AddAddition> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _value1Controller = new TextEditingController();
    TextEditingController _value2Controller = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Addition'),
      ),
      body:Column(
          children: <Widget>[
            Text('Add Values', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),),
            SizedBox(height: 10.0),
            Text('NB: Values  Must Not Exceed 100'),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Container(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _value1Controller,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintText: 'Value 1',
                      hintStyle: TextStyle(color: Colors.grey),

                    ),),
                ),
                SizedBox(width: 20.0),

                Container(
                  child: Icon(Icons.remove, size: 20.0),
                ),
                SizedBox(width: 20.0),

                Container(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _value2Controller,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintText: 'Value 2',
                      hintStyle: TextStyle(color: Colors.grey),

                    ),),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: Get.to(),
              child: Text('SUBMIT'),
            )


          ]
      ),
    );
  }
}
