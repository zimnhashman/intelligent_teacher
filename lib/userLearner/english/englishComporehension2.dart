import 'package:flutter/material.dart';

class EnglishQuestionAnswerTwo extends StatefulWidget {
  const EnglishQuestionAnswerTwo({Key? key}) : super(key: key);

  @override
  _EnglishQuestionAnswerTwoState createState() => _EnglishQuestionAnswerTwoState();
}

class _EnglishQuestionAnswerTwoState extends State<EnglishQuestionAnswerTwo> {
  @override
  Widget build(BuildContext context) {
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
                'Comprehension 2', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Read The Story', style: TextStyle(
                fontSize: 14.0,
              ),

              ),




              Text(
                  "Do you remember me? I’m Chiedza. I go to MOPSE-SAGE sessions with Vimbai. "
                      "I live with my grandmother. I have to help her at home. I also have to look after Tobe,"
                      " my daughter, and I do most of the work in the house. There are always "
                      "lots of things to do. I also need time for the MOPSE-SAGE sessions and my "
                      "homework. It’s difficult to remember everything.My friend Vimbai said, “You should make a list.”"
                      "“A list?” I said. “Are you crazy? I don’t need to write a list.”“Yes, you do,” she said. "
                      "“It always helps me to remember things.”Then she helped me to write a list of things to do for"
                      " today and tomorrow.I wanted to buy a chicken.“How do you spell ‘chicken’?” I asked.“I don’t know,” "
                      "said Vimbai. “Draw a little picture.”I drew a picture."
                      "“Your chicken looks like a turkey,” said Vimbai. “You mustn’t buy a turkey tomorrow!”"
              ),

              Divider(),

              //todo: Needs Boolean on answer fields using radio buttons using yes or no
              SingleChildScrollView(
                child: Column(
                  children: [
                    Text('Which of these things does Chiedza have to do?', style: TextStyle(
                         fontSize: 13.0,
                    ),),
                    Divider(),
                    Text('1. Help Her grandmother'),
                    Divider(),
                    TextFormField(

                    ),
                    Divider(thickness: 10.0,),

                    Text('2. Look after her son'),
                    Divider(),
                    TextFormField(

                    ),
                    Divider(thickness: 10.0,),

                    Text('3. Do most of the work in the house'),
                    Divider(),
                    TextFormField(

                    ),
                    Divider(thickness: 10.0,),

                    Text('4. Do her homework'),
                    Divider(),
                    TextFormField(

                    ),
                    Divider(thickness: 10.0,),

                    Text('5. Help Vimbai to cook a chicken'),
                    Divider(),
                    TextFormField(

                    ),
                    Divider(thickness: 10.0,),

                    Text('6. Buy a turkey tomorrow'),
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
    );;
  }
}
