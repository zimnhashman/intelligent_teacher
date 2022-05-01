import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';


class EnglishQuestionAnswerOne extends StatefulWidget {



  @override
  _EnglishQuestionAnswerOneState createState() => _EnglishQuestionAnswerOneState();
}

class _EnglishQuestionAnswerOneState extends State<EnglishQuestionAnswerOne> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _questionKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter Quiz'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                  'Comprehension 1', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Read The Story', style: TextStyle(
                fontSize: 14.0,
              ),

              ),

              Text(
                'My Homstead', style: TextStyle(
                fontSize: 15.0,
              ),

              ),



              Text(
                "Hello again! This is my home. We grow some vegetables and we keep some animals."
                    " I’ve got two more new friends from the sessions. Their names are Precious and Zendaya. Precious is 12 and Zendaya is 13. It is difficult for Zendaya to learn new things,"
                    " but she always smiles and she always says nice things. She loves animals.“How many animals have you got, Vimbai?” Zendaya asks.“We’ve got nine chickens and two goats,” "
                    "I say.“Girls, go and look for eggs,” says my mother.We go outside and look for eggs.“Here’s an egg!” says Precious, but then she drops it and the egg breaks.“Oh, no!” she says. "
                    "“I’m very sorry!”“Don’t worry,” I say. “There are lots more.”Precious finds one more egg, I find two eggs and Zandaya finds four eggs. “Wow, Zendaya!” says Precious."
                    " “You’re very good at finding eggs!”“I want to be a farmer!” says Zendaya, with a big smile. Match the questions with the numbers."
              ),
              Divider(),

              SingleChildScrollView(
                child: Column(
                  children: [
                    Text('How old  is Precious?'),
                    Divider(),
                    TextFormField(

                    ),
                    Divider(thickness: 10.0,),

                    Text('How old  is Zendaya?'),
                    Divider(),
                    TextFormField(

                    ),
                    Divider(thickness: 10.0,),

                    Text('How many chickens does Vimbai have?'),
                    Divider(),
                    TextFormField(

                    ),
                    Divider(thickness: 10.0,),

                    Text('How many goats does Vimbai have?'),
                    Divider(),
                    TextFormField(

                    ),
                    Divider(thickness: 10.0,),

                    Text('How many eggs does Zendaya find?'),
                    Divider(),
                    TextFormField(

                    ),
                    Divider(thickness: 10.0,),

                    Text('How many eggs do all the girls have?'),
                    Divider(),
                    TextFormField(

                    ),
                    Divider(thickness: 10.0,),


                  ],

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

