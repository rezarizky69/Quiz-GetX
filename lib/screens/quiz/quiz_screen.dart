import 'package:flutter/material.dart';
import 'package:flutter_quiz/controllers/question_controller.dart';
import 'package:flutter_quiz/screens/quiz/components/body.dart';
import 'package:get/get.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: _controller.nextQuestion,
            child: Text("Skip"),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
