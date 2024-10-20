import 'package:cbmprot/contextdata/data.dart';
import 'package:cbmprot/quizscreens/quizattackscreen.dart';
import 'package:cbmprot/screens/malware.dart';
import 'package:cbmprot/screens/security.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class CategoryScreen extends StatelessWidget {
  // Static data lists
  // Replace the icons list with image asset paths
  final List<String> imgList = [
    'images/3.png',  // Path to your image
    'images/4.png',  // Path to your image
    'images/5.png',     // Path to your image
    'images/6.png',  // Path to your image
  ];

  final List<String> titles = [
    'Attack Types',
    'Malware',
    'Security Components',
    'Common Ports',
  ];

  final List<Widget> screens = [
    QuizScreen(quizSet: Data.categories[0].quizSets[1] ),
    MalwareScreen(),
    SecurityScreen(),
    MalwareScreen(),
  ];

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
          icon: const Icon(
            LineAwesomeIcons.long_arrow_alt_left_solid,
            size: 50,
          ), // Line Awesome icon with size change
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      backgroundColor: Colors.black, // Set the background color to black
      body: SingleChildScrollView(  // Use SingleChildScrollView
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'images/2.png', // Replace with your image path
                width: 130, // Set the desired width for the image
                height: 130, // Set the desired height for the image
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Test Yourself',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'IBMPlexMono',
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.black, // Ensure the top container background is also black
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  ListView.builder(
                    itemCount: imgList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(), // Prevent scrolling inside ListView
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 35.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => screens[index]),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(10), // Padding for the container
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.cyan, width: 2), // Border color
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16), // Smaller border radius inside
                                  child: Image.asset(
                                    imgList[index],  // Use image from imgList
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover, // Ensure the image covers the container
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  titles[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'IBMPlexMono',
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
