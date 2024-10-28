import 'package:cbmprot/screens/safety.dart';
import 'package:cbmprot/screens/category.dart';
import 'package:cbmprot/screens/learnscreen.dart';
import 'package:cbmprot/news/news.dart';
import 'package:cbmprot/screens/password.dart';
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
    'VIDEOS',
    'COMPARER',
  ];

  List<Icon> catIcons = [
    Icon(LineAwesomeIcons.list_alt_solid, color: Colors.white, size: 80),
    Icon(LineAwesomeIcons.clipboard_check_solid, color: Colors.white, size: 80),
    Icon(LineAwesomeIcons.brain_solid, color: Colors.white, size: 80),
    Icon(LineAwesomeIcons.newspaper_solid, color: Colors.white, size: 80),
    Icon(LineAwesomeIcons.video_solid, color: Colors.white, size: 80),
    Icon(LineAwesomeIcons.fingerprint_solid, color: Colors.white, size: 80),
  ];

  // Make sure imgList matches the length of catNames and catIcons if used
  List<String> imgList = [
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              'images/2.png', // Replace with your image path
              width: 130, // Set the desired width for the image
              height: 130, // Set the desired height for the image
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black, // Ensure the top container background is green
            ),
            child: Center(
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
          Padding(
            padding: EdgeInsets.all(15),
            child: GridView.builder(
              itemCount: catNames.length, // Make sure it matches the length of all lists
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                childAspectRatio: 1, // 1 for square items
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // Navigate to different pages based on the index
                    if (index == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CategoryScreen()),
                      );
                    } else if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AwarenessScreen()), // Replace with your actual screen
                      );
                    } else if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LearnScreen()),
                      );
                    } else if (index == 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CybersecurityNewsScreen()), // Replace with your actual screen
                      );
                    } else if (index == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CategoryScreen()), // Replace with your actual screen
                      );
                    } else if (index == 5) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PasswordComparisonScreen()), // Replace with your actual screen
                      );
                    }
                  },

                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 4),
                      color: Color.fromRGBO(0, 194, 203, 100),
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
                            fontSize: 23,
                            color: Colors.white,
                            letterSpacing: 2.0, // Adjust the value for more or less spacing
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
