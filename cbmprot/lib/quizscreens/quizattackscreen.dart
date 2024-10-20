// import 'package:cbmprot/contextdata/question_model.dart';
// import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';

// class QuizAttackScreen extends StatefulWidget {
//   @override
//   State<QuizAttackScreen> createState() => _QuizAttackScreenState();
// }

// class _QuizAttackScreenState extends State<QuizAttackScreen> {
//   // Define data
//   List<Question> questionList = getQuestions();
//   int currentQuestionIndex = 0;
//   int score = 0;
//   Answer? selectedAnswer;

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       title: const Text('back'),
        
//   //       foregroundColor: Colors.white,
//   //       backgroundColor: Colors.black, // Customize as needed
//   //       leading: IconButton(

//   //         icon: const Icon(LineAwesomeIcons.long_arrow_alt_left_solid, size: 50,), // Use Line Awesome icon, size changed


          
//   //         onPressed: () {
//   //           Navigator.pop(context); // Go back to the previous screen
//   //         },
//   //       ),
//   //     ),
//   //     backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//   //     body: Container(
//   //       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.spaceAround,
//   //         children: [
//   //           const Text(
//   //             "CYBERMIND",
//   //             style: TextStyle(
//   //                 color: Color.fromRGBO(0, 194, 203, 100),
//   //                 fontSize: 50,
//   //                 fontFamily: 'IBMPlexMono'),
//   //           ),
//   //           _questionWidget(),
//   //           _answerList(),
//   //           _nextButton(),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.only(top: 8), // Padding to move the text down
//           child: const Text(
//             'Back', // Title text
//             style: TextStyle(
//               fontSize: 20, // Change the font size
//               fontFamily: 'IBMPlexMono', // Use your custom font family
//               color: Colors.white, // Text color
//             ),
//           ),
//         ),
//         foregroundColor: Colors.white,
//         backgroundColor: Colors.black, // Customize as needed
//         leading: IconButton(
//           icon: const Icon(LineAwesomeIcons.long_arrow_alt_left_solid, size: 50,), // Line Awesome icon with size change
//           onPressed: () {
//             Navigator.pop(context); // Go back to the previous screen
//           },
//         ),
//       ),
//       backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//       body: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Image.asset(
//               'images/1.png', // Replace with your image path
//               width: 130, // Set the desired width for the image
//               height: 130, // Set the desired height for the image
//             ),
//             // const Text(
//             //   "CYBERMIND",
//             //   style: TextStyle(
//             //     color: Color.fromRGBO(0, 194, 203, 100),
//             //     fontSize: 50,
//             //     letterSpacing: 2.0,
//             //     fontFamily: 'IBMPlexMono',
//             //   ),
//             // ),
//             _questionWidget(),
//             _answerList(),
//             _nextButton(),
//           ],
//         ),
//       ),
//     );
//   }



//   _questionWidget() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
//           style: const TextStyle(
//             color: Color.fromRGBO(0, 194, 203, 100),
//             fontSize: 20,
//             fontFamily: 'IBMPlexMono',
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         const SizedBox(height: 30),
//         Container(
//           alignment: Alignment.center,
//           width: double.infinity,
//           padding: const EdgeInsets.all(32),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: Text(
//             questionList[currentQuestionIndex].questionText,
//             style: const TextStyle(
//               color: Color.fromRGBO(0, 194, 203, 100),
//               fontSize: 16,
//               fontFamily: 'IBMPlexMono',
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   _answerList() {
//     return Column(
//       children: questionList[currentQuestionIndex]
//           .answersList
//           .map(
//             (e) => _answerButton(e),
//           )
//           .toList(),
//     );
//   }

//   Widget _answerButton(Answer answer) {
//     bool isSelected = answer == selectedAnswer;

//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       height: 48,
//       child: ElevatedButton(
//         child: Text(
//           answer.answerText,
//           style: TextStyle(
//             fontFamily: 'IBMPlexMono',
//             fontSize: 18,
//             color: isSelected ? Colors.black : Colors.white,
//           ),
//         ),
//         style: ElevatedButton.styleFrom(
//           foregroundColor: isSelected ? Colors.black : Colors.white,
//           backgroundColor: isSelected ? Colors.white : Color.fromRGBO(0, 194, 203, 100),
//           shape: const StadiumBorder(),
//           fixedSize: const Size(120, 40),
//         ),
//         onPressed: () {
//           if (selectedAnswer == null) {
//             if (answer.isCorrect) {
//               score++;
//             }

//             setState(() {
//               selectedAnswer = answer;
//             });
//           }
//         },
//       ),
//     );
//   }

//   _nextButton() {
//     bool isLastQuestion = currentQuestionIndex == questionList.length - 1;

//     return Container(
//       width: MediaQuery.of(context).size.width * 0.5,
//       height: 48,
//       child: ElevatedButton(
//         child: Text(
//           isLastQuestion ? "Submit" : "Next",
//           style: TextStyle(
//             fontFamily: 'IBMPlexMono',
//             fontSize: 18,
//             color: Colors.white,
//           ),
//         ),
        
//         style: ElevatedButton.styleFrom(
//           foregroundColor: Colors.white,
//           backgroundColor: Color.fromRGBO(87, 255, 124, 100),
//           shape: const StadiumBorder(),
//         ),
//         onPressed: () {
//           if (isLastQuestion) {
//             // Display score
//             showDialog(context: context, builder: (_) => _showScoreDialog());
//           } else {
//             // Move to the next question
//             setState(() {
//               selectedAnswer = null;
//               currentQuestionIndex++;
//             });
//           }
//         },
//       ),
//     );
//   }

//   _showScoreDialog() {
//     bool isPassed = score >= questionList.length * 0.5;

//     String title = isPassed ? "You've Passed" : "You've Failed";

//     return AlertDialog(
//       title: Text(
//         title + "| Score is $score",
//         style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
//       ),
//       content: ElevatedButton(
//         child: const Text("Restart"),
//         onPressed: () {
//           Navigator.pop(context);
//           setState(() {
//             currentQuestionIndex = 0;
//             score = 0;
//             selectedAnswer = null;
//           });
//         },
//       ),
//     );
//   }
// }


// import 'package:cbmprot/model/model.dart';
// import 'package:flutter/material.dart';
// import 'package:cbmprot/screens/result_screen.dart';

// class QuizAttackScreen extends StatefulWidget {
//   final QuizSet quizSet;

//   const QuizAttackScreen({super.key, required this.quizSet});

//   @override
//   State<QuizAttackScreen> createState() => _QuizAttackScreenState();
// }

// class _QuizAttackScreenState extends State<QuizAttackScreen> {
//   int currentQuiestionIndex = 0;
//   List<int?> selectedAnswers = [];

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     selectedAnswers = List<int?>.filled(widget.quizSet.questions.length, null);
//   }

//   void goToNextQuestion() {
//     if (currentQuiestionIndex < widget.quizSet.questions.length - 1) {
//       setState(() {
//         currentQuiestionIndex++;
//       });
//     }
//   }

//   void goToPreviousQuestion() {
//     if (currentQuiestionIndex > 0) {
//       setState(() {
//         currentQuiestionIndex--;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Question currentQuestion =
//         widget.quizSet.questions[currentQuiestionIndex];
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Colors.indigo,
//               Colors.purple,
//             ],
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 35),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 15),
//                 child: Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Icon(
//                         Icons.arrow_back_ios,
//                         color: Colors.white,
//                         size: 30,
//                       ),
//                     ),
//                     Text(
//                       widget.quizSet.name,
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height / 1.8,
//                 margin: EdgeInsets.all(16),
//                 padding: EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       currentQuestion.question,
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     ...currentQuestion.options.asMap().entries.map((entry) {
//                       final index = entry.key;
//                       final option = entry.value;
//                       return GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             selectedAnswers[currentQuiestionIndex] = index;
//                           });
//                         },
//                         child: Container(
//                           padding:
//                               EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//                           margin: EdgeInsets.symmetric(vertical: 8),
//                           decoration: BoxDecoration(
//                             color:
//                                 selectedAnswers[currentQuiestionIndex] == index
//                                     ? Colors.indigo
//                                     : Colors.white,
//                             border: Border.all(
//                               width: 2,
//                               color: selectedAnswers[currentQuiestionIndex] ==
//                                       index
//                                   ? Colors.indigo
//                                   : Colors.grey,
//                             ),
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                           child: Center(
//                             child: Text(
//                               option,
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 color: selectedAnswers[currentQuiestionIndex] ==
//                                         index
//                                     ? Colors.white
//                                     : Colors.black,
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 16,
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     })
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(16),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     currentQuiestionIndex > 0
//                         ? ElevatedButton(
//                             onPressed: goToPreviousQuestion,
//                             child: Text(
//                               "Back",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black,
//                               ),
//                             ))
//                         : SizedBox(),
//                     ElevatedButton(
//                         onPressed: () {
//                           if (currentQuiestionIndex <
//                               widget.quizSet.questions.length - 1) {
//                             goToNextQuestion();
//                           } else {
//                             int totalCorrect = 0;
//                             for (int i = 0;
//                                 i < widget.quizSet.questions.length;
//                                 i++) {
//                               if (selectedAnswers[i] ==
//                                   widget.quizSet.questions[i].selectedIndex) {
//                                 totalCorrect++;
//                               }
//                             }
//                             Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ResultScreen(
//                                     totalQuestions:
//                                         widget.quizSet.questions.length,
//                                     totalAttempts:
//                                         widget.quizSet.questions.length,
//                                     totalCorrect: totalCorrect,
//                                     totalScore: totalCorrect * 10,
//                                     quizSet: widget.quizSet,
//                                   ),
//                                 ));
//                           }
//                         },
//                         child: Text(
//                           currentQuiestionIndex ==
//                                   widget.quizSet.questions.length - 1
//                               ? "Submit"
//                               : "Next",
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.black,
//                           ),
//                         ))
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

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
        title: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: const Text(
            'Back',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'IBMPlexMono',
              color: Colors.white,
            ),
          ),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(LineAwesomeIcons.long_arrow_alt_left_solid, size: 50,),
          onPressed: () {
            Navigator.pop(context);
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
              'images/2.png',
              width: 130,
              height: 130,
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

