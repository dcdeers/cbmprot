// import 'package:cbmprot/question_model.dart';
// import 'package:flutter/material.dart';


// class QuizScreen extends StatefulWidget {

//   @override
//   State<QuizScreen> createState() => _QuizScreenState();
// }

// class _QuizScreenState extends State<QuizScreen> {

//   //define datas

//   List<Question> questionList = getQuestions();
//   int currentQuestionIndex = 0;
//   int score = 0;

//   Answer? selectedAnswer;


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//       body: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
//           const Text(
//             "CYBERMIND",
//             style: TextStyle(
//               color: Color.fromRGBO(0, 194, 203, 100),
//               fontSize: 50,
//               fontFamily: 'IBMPlexMono'
//             ),
//           ),
//           _questionWidget(),
//           _answerList(),
//           _nextButton(),
//         ]),
//       ),
//     );
//   }



//   _questionWidget(){
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,

//       children: [
//         Text(
//           "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}", 
//           style: const TextStyle(
//           color: Color.fromRGBO(0, 194, 203, 100),
//           fontSize: 25,
//           fontFamily: 'IBMPlexMono',
//           fontWeight: FontWeight.w600,
//         ),
//       ),
//       const SizedBox(height: 30),

//       Container(
//         alignment: Alignment.center,
//         width: double.infinity,
//         padding: const EdgeInsets.all(32),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius:  BorderRadius.circular(16),
//         ),

//         child: Text(
//           questionList[currentQuestionIndex].questionText,
//           style: const TextStyle(
//           color: Color.fromRGBO(0, 194, 203, 100),
//           fontSize: 16,
//           fontFamily: 'IBMPlexMono',
//           fontWeight: FontWeight.w600,
//           )
//         )         
//       ),
//       ],
//     );
//   }

  
//   _answerList(){
//         return Column(
//       children: questionList[currentQuestionIndex]
//       .answersList
//       .map(
//         (e) => _answerButton(e),
//       )
//       .toList(),
//     );
//   }

//   Widget _answerButton(Answer answer) {
//   bool isSelected = answer == selectedAnswer;

//   return Container(
//     width: double.infinity,
//     margin: const EdgeInsets.symmetric(vertical: 8),
//     height: 48,

//     child: ElevatedButton(
//       child: Text(
//         answer.answerText,
//         style: TextStyle(
//           fontFamily: 'IBMPlexMono', // Set your custom font family
//           fontSize: 18,             // Optionally adjust the font size
//           color: isSelected ? Colors.black : Colors.white, // Text color based on selection
//         ),
//       ),

//       style: ElevatedButton.styleFrom(
//         foregroundColor: isSelected ? Colors.black : Colors.white,
//         backgroundColor: isSelected ? Colors.white : Color.fromRGBO(0, 194, 203, 100),
//         shape: const StadiumBorder(),
//         fixedSize: const Size(120, 40),
//       ),

//       onPressed: () {

//         if (selectedAnswer == null) {
//           if (answer.isCorrect) {
//             score++;
//           }

//           setState(() {
//             selectedAnswer = answer;
//           });
//         }

//       },
//     ),
//   );
// }

//  _nextButton() {
//   bool isLastQuestion = false;

//   if (currentQuestionIndex == questionList.length - 1) {
//     isLastQuestion = true;
//   }

//   return Container(
//     width: MediaQuery.of(context).size.width * 0.5,
//     height: 48,
//     child: ElevatedButton(
//       child: Text(
//         isLastQuestion ? "Submit" : "Next",
//         style: TextStyle(
//           fontFamily: 'IBMPlexMono', // Use your custom font family here
//           fontSize: 18,             // Adjust the font size if needed
//           color: Colors.white,       // Text color
//         ),
//       ),
//       style: ElevatedButton.styleFrom(
//         foregroundColor: Colors.white,
//         backgroundColor: Color.fromRGBO(87, 255, 124, 100),
//         shape: const StadiumBorder(),
//       ),
//       onPressed: () {
//         if (isLastQuestion) {
//           // Display score
//           showDialog(context: context, builder: (_) => _showScoreDialog());
//         } else {
//           // Move to the next question
//           setState(() {
//             selectedAnswer = null;
//             currentQuestionIndex++;
//           });
//         }
//       },
//     ),
//   );
// }
 
//   _showScoreDialog(){
//     bool isPassed = false;

//     if (score >= questionList.length * 0.5){

//       //pass if 50 %
//       isPassed = true;

//     }

//     String title = isPassed ? "You've Passed" : "You've Failed";

//     return AlertDialog(
//       title: Text(title + "| Score is $score", 
//       style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
//       ),

//       content: ElevatedButton(child: const Text("Restart"),
      
//       onPressed: () {
//         Navigator.pop(context);

//         setState(() {

//           currentQuestionIndex = 0;
//           score = 0;
//           selectedAnswer = null;

//         });

//       }, 
//       ),
//     );
//   }
// }

import 'package:cbmprot/contextdata/question_model.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // Define data
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('back'),
        
  //       foregroundColor: Colors.white,
  //       backgroundColor: Colors.black, // Customize as needed
  //       leading: IconButton(

  //         icon: const Icon(LineAwesomeIcons.long_arrow_alt_left_solid, size: 50,), // Use Line Awesome icon, size changed


          
  //         onPressed: () {
  //           Navigator.pop(context); // Go back to the previous screen
  //         },
  //       ),
  //     ),
  //     backgroundColor: const Color.fromARGB(255, 0, 0, 0),
  //     body: Container(
  //       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           const Text(
  //             "CYBERMIND",
  //             style: TextStyle(
  //                 color: Color.fromRGBO(0, 194, 203, 100),
  //                 fontSize: 50,
  //                 fontFamily: 'IBMPlexMono'),
  //           ),
  //           _questionWidget(),
  //           _answerList(),
  //           _nextButton(),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 8), // Padding to move the text down
          child: const Text(
            'Back', // Title text
            style: TextStyle(
              fontSize: 20, // Change the font size
              fontFamily: 'IBMPlexMono', // Use your custom font family
              color: Colors.white, // Text color
            ),
          ),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black, // Customize as needed
        leading: IconButton(
          icon: const Icon(LineAwesomeIcons.long_arrow_alt_left_solid, size: 50,), // Line Awesome icon with size change
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'images/1.png', // Replace with your image path
              width: 130, // Set the desired width for the image
              height: 130, // Set the desired height for the image
            ),
            // const Text(
            //   "CYBERMIND",
            //   style: TextStyle(
            //     color: Color.fromRGBO(0, 194, 203, 100),
            //     fontSize: 50,
            //     letterSpacing: 2.0,
            //     fontFamily: 'IBMPlexMono',
            //   ),
            // ),
            _questionWidget(),
            _answerList(),
            _nextButton(),
          ],
        ),
      ),
    );
  }



  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
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
            questionList[currentQuestionIndex].questionText,
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

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(
          answer.answerText,
          style: TextStyle(
            fontFamily: 'IBMPlexMono',
            fontSize: 18,
            color: isSelected ? Colors.black : Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected ? Colors.black : Colors.white,
          backgroundColor: isSelected ? Colors.white : Color.fromRGBO(0, 194, 203, 100),
          shape: const StadiumBorder(),
          fixedSize: const Size(120, 40),
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
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

  _nextButton() {
    bool isLastQuestion = currentQuestionIndex == questionList.length - 1;

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(
          isLastQuestion ? "Submit" : "Next",
          style: TextStyle(
            fontFamily: 'IBMPlexMono',
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromRGBO(87, 255, 124, 100),
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (isLastQuestion) {
            // Display score
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            // Move to the next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = score >= questionList.length * 0.5;

    String title = isPassed ? "You've Passed" : "You've Failed";

    return AlertDialog(
      title: Text(
        title + "| Score is $score",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: const Text("Restart"),
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
