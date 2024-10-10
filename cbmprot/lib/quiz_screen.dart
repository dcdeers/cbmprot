import 'package:cbmprot/question_model.dart';
import 'package:flutter/material.dart';


class QuizScreen extends StatefulWidget {

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  //define datas

  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;

  Answer? selectedAnswer;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
          const Text(
            "CYBERMIND",
            style: TextStyle(
              color: Color.fromRGBO(0, 194, 203, 100),
              fontSize: 50,
              fontFamily: 'IBMPlexMono'
            ),
          ),
          _questionWidget(),
          _answerList(),
          _nextButton(),
        ]),
      ),
    );
  }



  _questionWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}", 
          style: const TextStyle(
          color: Color.fromRGBO(0, 194, 203, 100),
          fontSize: 25,
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
          color: Colors.orange,
          borderRadius:  BorderRadius.circular(16),
        ),

        child: Text(
          questionList[currentQuestionIndex].questionText,
          style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          )
        )         
      ),
      ],
    );
  }

  
  _answerList(){
        return Column(
      children: questionList[currentQuestionIndex]
      .answersList
      .map(
        (e) => _answerButton(e),
      )
      .toList(),
    );
  }

  Widget _answerButton(Answer answer){

    bool isSelected = answer == selectedAnswer;



    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black, backgroundColor: isSelected ? Colors.orangeAccent : Colors.white, shape: const StadiumBorder(),
        ),
        onPressed: (){

          if(selectedAnswer == null){
            if(answer.isCorrect){
              score++;
            }

            setState(() {
            selectedAnswer = answer;
            });

          }


          
        },
        ),
    );

  }

  _nextButton(){

     bool isLastQuestion = false;

     if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
      }


    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, backgroundColor: Colors.blueAccent, shape: const StadiumBorder(),
        ),
        onPressed: (){

          if(isLastQuestion){
            //disp score

            showDialog(context: context, builder: (_) => _showScoreDialog());
          }else{
            //nest ques

            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;

            });
          }

        },
        ),
    );
  }


  _showScoreDialog(){
    bool isPassed = false;

    if (score >= questionList.length * 0.6){

      //pass if 60 %
      isPassed = true;

    }

    String title = isPassed ? "Passed" : "Failed";


    return AlertDialog(
      title: Text(title + "| Score is $score", 
      style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),

      content: ElevatedButton(child: const Text("Restart"),
      
      onPressed: () {
        Navigator.pop(context);

        setState(() {

          currentQuestionIndex = 0;
          score = 0;
          selectedAnswer = null;
        });

      }, 
      ),
    );
  }

}