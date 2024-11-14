import 'package:cbmprot/quizscreens/quizscreen.dart';
import 'package:cbmprot/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:cbmprot/model/model.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ResultScreen extends StatelessWidget {
  final int totalQuestions;
  final int totalAttempts;
  final int totalCorrect;
  final int totalScore;
  final QuizSet quizSet;

  const ResultScreen(
      {super.key,
      required this.totalQuestions,
      required this.totalAttempts,
      required this.totalCorrect,
      required this.totalScore,
      required this.quizSet});

  @override
  Widget build(BuildContext context) {
    String feedback = totalScore < 30
        ? "You Failed!"
        : totalScore < 60
            ? "Good!"
            : totalScore < 80
                ? "Great"
                : "Awesome!";
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
          icon: const Icon(
            LineAwesomeIcons.long_arrow_alt_left_solid,
            size: 50,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 35),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 15),
            //   child: Row(
            //     children: [
            //       InkWell(
            //         onTap: () {
            //           Navigator.pop(context);
            //         },
            //         child: Icon(
            //           LineAwesomeIcons.long_arrow_alt_left_solid,
            //           color: Colors.white,
            //           size: 30,
            //         ),
            //       ),
            //       Text(
            //         "Back",
            //         style: TextStyle(
            //           fontSize: 25,
            //           fontWeight: FontWeight.w500,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(height: 100),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      feedback,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "You Have Scored",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "${totalScore} / ${totalQuestions * 10}",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      QuizAttackScreen(quizSet: quizSet),
                                ));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.cyan,
                              
                            ),
                            child: Text(
                              "Repeat",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.cyan,
                            ),
                            child: Text(
                              "Home",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
