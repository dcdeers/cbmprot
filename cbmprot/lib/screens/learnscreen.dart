import 'package:cbmprot/learnonclick/attacks.dart';
import 'package:cbmprot/learnonclick/malware.dart';
import 'package:cbmprot/learnonclick/security.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class LearnScreen extends StatelessWidget {
  // Static data lists
  // Replace the icons list with image asset paths
  final List<String> imgList = [
    'images/CATTACK.png',  // Path to your image
    'images/MALWARE.png',  // Path to your image
    'images/SCOM.png',     // Path to your image
    'images/COMPORT.png',  // Path to your image
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
                'Select a Topic to Learn',
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
                  GridView.builder(
                    itemCount: imgList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(), // Prevent scrolling inside GridView
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
                              MaterialPageRoute(builder: (context) => AttackScreen()),
                            );
                          } else if (index == 1) { // New page for index 1
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MalwareScreen()),
                            );
                          } else if (index == 2) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SecurityScreen()),
                            );
                          } else if (index == 3) { // New page for index 3
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MalwareScreen()),
                            );
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(5), // Padding for the border
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.cyan, width: 4), // Border color
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16), // Smaller border radius inside
                            child: Image.asset(
                              imgList[index],  // Use image from imgList
                              fit: BoxFit.cover, // Ensure the image covers the entire grid item
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
