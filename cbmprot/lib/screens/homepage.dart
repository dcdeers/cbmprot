import 'package:cbmprot/screens/safety.dart';
import 'package:cbmprot/screens/category.dart';
import 'package:cbmprot/screens/learnscreen.dart';
import 'package:cbmprot/news/news.dart';
import 'package:cbmprot/screens/password.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  // Static data lists
  final List<String> catNames = [
    "QUIZ",
    'TIPS',
    'LEARN',
    'NEWS',
    'STRENGTH TESTER',
  ];

  final List<Icon> catIcons = [
    Icon(LineAwesomeIcons.list_alt_solid, color: Colors.white, size: 50),
    Icon(LineAwesomeIcons.clipboard_check_solid, color: Colors.white, size: 50),
    Icon(LineAwesomeIcons.brain_solid, color: Colors.white, size: 50),
    Icon(LineAwesomeIcons.newspaper_solid, color: Colors.white, size: 50),
    Icon(LineAwesomeIcons.fingerprint_solid, color: Colors.white, size: 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // Logo Section
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/2.png'), // Replace with your image path
                ),
              ),
            ),
            SizedBox(height: 10),
            // Title Section
            Text(
              "CYBERMIND",
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
                fontFamily: 'IBMPlexMono',
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // Menu Section
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // First Row: Quiz and Tips
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: _buildMenuItem(context, catNames[0], catIcons[0], CategoryScreen()),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: _buildMenuItem(context, catNames[1], catIcons[1], AwarenessScreen()),
                      ),
                    ],
                  ),
                  // Second Row: Learn and News
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: _buildMenuItem(context, catNames[2], catIcons[2], LearnScreen()),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: _buildMenuItem(context, catNames[3], catIcons[3], CybersecurityNewsScreen()),
                      ),
                    ],
                  ),
                  // Centered Row: Comparer button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildMenuItem(
                        context,
                        catNames[4],
                        catIcons[4],
                        PasswordComparisonScreen(),
                        width: MediaQuery.of(context).size.width * 0.5,
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

  Widget _buildMenuItem(
      BuildContext context, String name, Icon icon, Widget screen, {double? width}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        width: width ?? 170, // Fixed width for the button or custom width if provided
        height: 170, // Fixed height for the button
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 194, 203, 100), // Adjusted alpha value for opacity to 1 (fully opaque)
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white, // Border color
            width: 4, // Border width
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.4),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(height: 15),
            Text(
              name,
               textAlign: TextAlign.center, // Ensure the text is centered
              style: TextStyle(
                fontFamily: 'IBMPlexMono',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
