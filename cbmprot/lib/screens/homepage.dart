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
    Icon(LineAwesomeIcons.list_alt_solid, color: Colors.white, size: 80),
    Icon(LineAwesomeIcons.clipboard_check_solid, color: Colors.white, size: 80),
    
    Icon(LineAwesomeIcons.brain_solid, color: Colors.white, size: 80),
    Icon(LineAwesomeIcons.newspaper_solid, color: Colors.white, size: 80),
    Icon(LineAwesomeIcons.fingerprint_solid, color: Colors.white, size: 80),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset(
                'images/2.png', // Replace with your image path
                width: 130, // Set the desired width for the image
                height: 130, // Set the desired height for the image
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black, // Ensure the top container background is black
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
              SizedBox(height: 15),
              // First Row: Quiz and Tips
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMenuItem(context, catNames[0], catIcons[0], CategoryScreen()),
                  _buildMenuItem(context, catNames[1], catIcons[1], AwarenessScreen()), // Replace with your actual screen
                ],
              ),
              SizedBox(height: 20),

              // Second Row: Comparer Button (Centered)
              Center(
                child: _buildMenuItem(
                  context,
                  catNames[2],
                  catIcons[2],
                  LearnScreen(), // Replace with your actual screen
                  width: MediaQuery.of(context).size.width * 0.44,
                ),
              ),
              SizedBox(height: 20),
              // Third Row: Learn and News
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMenuItem(context, catNames[3], catIcons[3], CybersecurityNewsScreen()),
                  _buildMenuItem(context, catNames[4], catIcons[4], PasswordComparisonScreen()), // Replace with your actual screen
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String name, Icon icon, Widget screen, {double? width}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        width: width ?? MediaQuery.of(context).size.width * 0.45,
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
                fontSize: 23,
                color: Colors.white,
                letterSpacing: 2.0, // Adjust the value for more or less spacing
              ),
            ),
          ],
        ),
      ),
    );
  }
}
