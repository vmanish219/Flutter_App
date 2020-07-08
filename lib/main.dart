import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int qIndex = 0;

  void answerQuestion() {
    setState(() {
      qIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["Question 1", "Question 2", "Question 3", "Question 4"];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: Column(
            children: [
              Question(
                questions[qIndex],
              ),
              RaisedButton(child: Text("OP 1"), onPressed: answerQuestion),
              RaisedButton(child: Text("OP 2"), onPressed: answerQuestion),
              RaisedButton(child: Text("OP 3"), onPressed: answerQuestion),
            ],
          )),
    );
  }
}
