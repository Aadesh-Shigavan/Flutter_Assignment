import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
      print(questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var text = [
      'Hey How Are you',
      'I Am Jarvis ',
      'What can i do for you',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Assignment'),
          ),
          body: Column(
            children: [
              Text(text[questionIndex]),
              Center(
                  child: RaisedButton(
                      child: Text(
                        'Click here!!',
                      ),
                      onPressed: answerQuestion))
            ],
          )),
    );
  }
}
