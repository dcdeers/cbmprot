// import 'package:flutter/material.dart';

// class LearnScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Learning Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Welcome to the Learning Screen!',
//               style: TextStyle(fontSize: 24),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Add functionality here (e.g., navigate to a quiz or information)
//               },
//               child: Text('Start Learning'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class LearnScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black, // Set background to black
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         elevation: 0, // Remove shadow under the AppBar
//         title: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Image.asset(
//             'images/1.png', // Your icon/logo path
//             height: 130,
//             width: 130, // Adjust size according to the design
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             _buildMenuItem(
//               iconPath: 'images/3.png', // Path to your icon
//               title: 'Attack Types',
//               onTap: () {
//                 // Navigate or perform action
//               },
//             ),
//             SizedBox(height: 16),
//             _buildMenuItem(
//               iconPath: 'images/4.png', // Path to your icon
//               title: 'Malware',
//               onTap: () {
//                 // Navigate or perform action
//               },
//             ),
//             SizedBox(height: 16),
//             _buildMenuItem(
//               iconPath: 'images/5.png', // Path to your icon
//               title: 'Security Components',
//               onTap: () {
//                 // Navigate or perform action
//               },
//             ),
//             SizedBox(height: 16),
//             _buildMenuItem(
//               iconPath: 'images/6.png', // Path to your icon
//               title: 'Common Ports',
//               onTap: () {
//                 // Navigate or perform action
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget to build each menu item
//   Widget _buildMenuItem({required String iconPath, required String title, required Function() onTap}) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(8),
//           border: Border.all(color: Colors.cyan, width: 2),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             children: [
//               Image.asset(
//                 iconPath,
//                 height: 40,
//                 color: Colors.cyan, // Set icon color to match the prototype
//               ),
//               SizedBox(width: 16),
//               Text(
//                 title,
//                 style: TextStyle(
//                   color: Colors.cyan,
//                   fontSize: 18,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class SimpleListViewScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Simple ListView'),
//       ),
//       body: ListView(
//         children: <Widget>[
//           _buildListItem('Item 1', () {
//             print('Item 1 tapped');
//           }),
//           _buildListItem('Item 2', () {
//             print('Item 2 tapped');
//           }),
//           _buildListItem('Item 3', () {
//             print('Item 3 tapped');
//           }),
//           _buildListItem('Item 4', () {
//             print('Item 4 tapped');
//           }),
//         ],
//       ),
//     );
//   }

//   // Helper function to build each list item
//   Widget _buildListItem(String title, Function() onTap) {
//     return ListTile(
//       title: Text(title),
//       onTap: onTap,
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: SimpleListViewScreen(),
//   ));
// }

// import 'package:flutter/material.dart';
// import 'package:cbmprot/quiz_screen.dart';
// import 'package:cbmprot/screens/learnscreen.dart';

// class LearnScreen extends StatelessWidget {
//   // Static data lists

//   // Add a list for the text labels
//   List<String> catNames = [
//     "QUIZ",
//     'TIPS',
//     'LEARN',
//     'NEWS',
//   ];

//   // Replace the icons list with image asset paths
//   List<String> imgList = [
//     'images/2.png',  // Path to your image
//     'images/3.png',  // Path to your image
//     'images/4.png', // Path to your image
//     'images/4.png',  // Path to your image
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black, // Set the background color to black
//       body: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Image.asset(
//               'images/2.png', // Replace with your image path
//               width: 130, // Set the desired width for the image
//               height: 130, // Set the desired height for the image
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
//             decoration: BoxDecoration(
//               color: Colors.green, // Ensure the top container background is also black
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 3),
//                 Center(
//                   child: Padding(
//                     padding: EdgeInsets.zero,
//                     child: Text(
//                       "CYBERMIND",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 63,
//                         fontFamily: 'IBMPlexMono',
//                         letterSpacing: 2.0, // Adjust the value for more or less spacing
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 20, left: 15, right: 15),
//             child: Column(
//               children: [
//                 SizedBox(height: 20),
//                 GridView.builder(
//                   itemCount: imgList.length,
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, // Number of columns
//                     childAspectRatio: 1, // 1 for square items
//                     mainAxisSpacing: 40,
//                     crossAxisSpacing: 20,
//                   ),
//                   itemBuilder: (context, index) {
//                     return InkWell(
//                       onTap: () {
//                         // Navigate to different pages based on the index
//                         if (index == 0) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => QuizScreen()),
//                           );
//                         } else if (index == 2) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => LearnScreen()),
//                           );
//                         }
//                         // Add more conditions for other indexes
//                       },
//                       child: Container(
//                         padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Colors.green,
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.all(10),
//                               child: Image.asset(
//                                 imgList[index],  // Use image from imgList
//                                 height: 80,      // Set desired image height
//                               ),
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               catNames[index],
//                               style: TextStyle(
//                                 fontFamily: 'IBMPlexMono',
//                                 fontSize: 20,
//                                 color: Colors.cyanAccent,
//                                 letterSpacing: 2.0, // Adjust the value for more or less spacing
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }











import 'package:flutter/material.dart';
import 'package:cbmprot/quiz_screen.dart';
import 'package:cbmprot/screens/learnscreen.dart';

class LearnScreen extends StatelessWidget {
  // Static data lists

  // Replace the icons list with image asset paths
  List<String> imgList = [
    'images/3.png',  // Path to your image
    'images/4.png',  // Path to your image
    'images/malware.png', // Path to your image
    'images/5.png',  // Path to your image
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green, // Background color for the container
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
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
    );
  }
}