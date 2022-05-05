import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddSubtraction extends StatefulWidget {



  @override
  _AddSubtractionState createState() => _AddSubtractionState();
}

class _AddSubtractionState extends State<AddSubtraction> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _value1Controller = new TextEditingController();
    TextEditingController _value2Controller = new TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Add Subtraction Question')),
      body: Column(
        children: <Widget>[
          Text('Add Values', style: TextStyle(
              fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),),
          SizedBox(height: 10.0),
          Text('NB: Value 1 Must Be Greater Than Value 2'),
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
