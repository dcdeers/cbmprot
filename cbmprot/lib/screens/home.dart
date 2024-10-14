import 'package:cbmprot/quiz_screen.dart';
import 'package:cbmprot/screens/learnscreen.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  // Static data lists

  // Add a list for the text labels
  List<String> catNames = [
    "QUIZ",
    'TIPS',
    'LEARN',
    'NEWS',
  ];

  List<Icon> catIcons = [
    Icon(LineAwesomeIcons.list_alt_solid, color: Colors.white, size: 80),
    Icon(LineAwesomeIcons.clipboard_check_solid, color: Colors.white, size: 80),
    Icon(LineAwesomeIcons.brain_solid, color: Colors.white, size: 80),
    Icon(LineAwesomeIcons.newspaper_solid, color: Colors.white, size: 80),
  ];

  List<String> imgList = [
    '3',
    '4',
    '5',
    '6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'images/2.png', // Replace with your image path
              width: 130, // Set the desired width for the image
              height: 130, // Set the desired height for the image
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.green, // Ensure the top container background is also black
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 3),
                Center(
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: Text(
                      "CYBERMIND",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 63,
                        fontFamily: 'IBMPlexMono',
                        letterSpacing: 2.0, // Adjust the value for more or less spacing
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                SizedBox(height: 20),
                GridView.builder(
                  
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    childAspectRatio: 1, // 1 for square items
                    mainAxisSpacing: 40,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        // Navigate to different pages based on the index
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => QuizScreen()),
                          );
                        } else if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LearnScreen()),
                          );
                        }
                        // Add more conditions for other indexes
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: catIcons[index],
                            ),
                            SizedBox(height: 10),
                            Text(
                              catNames[index],
                              style: TextStyle(
                                fontFamily: 'IBMPlexMono',
                                fontSize: 20,
                                color: Colors.cyanAccent,
                                letterSpacing: 2.0, // Adjust the value for more or less spacing
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
