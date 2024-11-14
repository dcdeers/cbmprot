import 'package:cbmprot/model/model.dart';
import 'package:flutter/material.dart';
import 'package:cbmprot/screens/result_screen.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class QuizAttackScreen extends StatefulWidget {
  final QuizSet quizSet;

  const QuizAttackScreen({super.key, required this.quizSet});

  @override
  State<QuizAttackScreen> createState() => _QuizAttackScreenState();
}

class _QuizAttackScreenState extends State<QuizAttackScreen> {
  int currentQuestionIndex = 0;
  List<int?> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    selectedAnswers = List<int?>.filled(widget.quizSet.questions.length, null);
  }

  void goToNextQuestion() {
    if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    }
  }

  void goToPreviousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Question currentQuestion = widget.quizSet.questions[currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        // title: Padding(
        //   padding: const EdgeInsets.only(top: 8),
        //   child: const Text(
        //     'Back',
        //     style: TextStyle(
        //       fontSize: 20,
        //       fontFamily: 'IBMPlexMono',
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(LineAwesomeIcons.long_arrow_alt_left_solid, size: 50),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/2.png',
              width: 100,
              height: 100,
            ),
            _questionWidget(currentQuestion),
            _answerList(currentQuestion),
            _navigationButtons(),
          ],
        ),
      ),
    );
  }

  Widget _questionWidget(Question currentQuestion) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${widget.quizSet.questions.length}",
          style: const TextStyle(
            color: Color.fromRGBO(0, 194, 203, 100),
            fontSize: 20,
            fontFamily: 'IBMPlexMono',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            currentQuestion.question,
            style: const TextStyle(
              color: Color.fromRGBO(0, 194, 203, 100),
              fontSize: 16,
              fontFamily: 'IBMPlexMono',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _answerList(Question currentQuestion) {
    return Column(
      children: currentQuestion.options.asMap().entries.map((entry) {
        final index = entry.key;
        final option = entry.value;
        bool isSelected = selectedAnswers[currentQuestionIndex] == index;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedAnswers[currentQuestionIndex] = index;
            });
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: isSelected ? Colors.indigo : Colors.white,
              border: Border.all(
                width: 2,
                color: isSelected ? Colors.indigo : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                option,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'IBMPlexMono',
                  fontSize: 18,
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _navigationButtons() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          currentQuestionIndex > 0
              ? ElevatedButton(
                  onPressed: goToPreviousQuestion,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    "Back",
                    style: TextStyle(
                      fontFamily: 'IBMPlexMono',
                      fontSize: 16,
                    ),
                  ),
                )
              : const SizedBox(),
          ElevatedButton(
            onPressed: () {
              if (currentQuestionIndex < widget.quizSet.questions.length - 1) {
                goToNextQuestion();
              } else {
                int totalCorrect = 0;
                for (int i = 0; i < widget.quizSet.questions.length; i++) {
                  if (selectedAnswers[i] == widget.quizSet.questions[i].selectedIndex) {
                    totalCorrect++;
                  }
                }
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      totalQuestions: widget.quizSet.questions.length,
                      totalAttempts: widget.quizSet.questions.length,
                      totalCorrect: totalCorrect,
                      totalScore: totalCorrect * 10,
                      quizSet: widget.quizSet,
                    ),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromRGBO(87, 255, 124, 100),
              shape: const StadiumBorder(),
            ),
            child: Text(
              currentQuestionIndex == widget.quizSet.questions.length - 1
                  ? "Submit"
                  : "Next",
              style: const TextStyle(
                fontFamily: 'IBMPlexMono',
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


