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
  final List<String> catNames = [
    "QUIZ",
    'TIPS',
    'LEARN',
    'NEWS',
    'COMPARER',
  ];

  final List<Icon> catIcons = [
    Icon(LineAwesomeIcons.list_alt_solid, color: Colors.white, size: 55),
    Icon(LineAwesomeIcons.clipboard_check_solid, color: Colors.white, size: 55),
    Icon(LineAwesomeIcons.brain_solid, color: Colors.white, size: 55),
    Icon(LineAwesomeIcons.newspaper_solid, color: Colors.white, size: 55),
    Icon(LineAwesomeIcons.fingerprint_solid, color: Colors.white, size: 55),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // Image Container
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/2.png'), // Replace with your image path
                ),
              ),
            ),
            SizedBox(height: 5),

            // Title
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  "CYBERMIND",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48, // Reduced size to fit smaller screens
                    fontFamily: 'IBMPlexMono',
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Menu Items
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // First Row: Quiz and Tips
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: _buildMenuItem(
                            context, catNames[0], catIcons[0], CategoryScreen()),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: _buildMenuItem(context, catNames[1], catIcons[1],
                            AwarenessScreen()), // Replace with your actual screen
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  // Comparer Button (Centered)
                  _buildMenuItem(
                    context,
                    catNames[2],
                    catIcons[2],
                    LearnScreen(), // Replace with your actual screen
                    width: MediaQuery.of(context).size.width * 0.44,
                  ),
                  SizedBox(height: 15),

                  // Third Row: Learn and News
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: _buildMenuItem(context, catNames[3], catIcons[3],
                            CybersecurityNewsScreen()),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: _buildMenuItem(context, catNames[4], catIcons[4],
                            PasswordComparisonScreen()), // Replace with your actual screen
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String name, Icon icon,
      Widget screen, {double? width}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        width: 160,  // Fixed width for the button
        height: 160, // Fixed height for the button
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
              child: icon,
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'IBMPlexMono',
                fontSize: 20, // Reduced size for better fit
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
