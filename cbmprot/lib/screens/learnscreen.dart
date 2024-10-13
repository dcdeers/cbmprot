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

import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background to black
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0, // Remove shadow under the AppBar
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            'images/1.png', // Your icon/logo path
            height: 130,
            width: 130, // Adjust size according to the design
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _buildMenuItem(
              iconPath: 'images/3.png', // Path to your icon
              title: 'Attack Types',
              onTap: () {
                // Navigate or perform action
              },
            ),
            SizedBox(height: 16),
            _buildMenuItem(
              iconPath: 'images/4.png', // Path to your icon
              title: 'Malware',
              onTap: () {
                // Navigate or perform action
              },
            ),
            SizedBox(height: 16),
            _buildMenuItem(
              iconPath: 'images/5.png', // Path to your icon
              title: 'Security Components',
              onTap: () {
                // Navigate or perform action
              },
            ),
            SizedBox(height: 16),
            _buildMenuItem(
              iconPath: 'images/6.png', // Path to your icon
              title: 'Common Ports',
              onTap: () {
                // Navigate or perform action
              },
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build each menu item
  Widget _buildMenuItem({required String iconPath, required String title, required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.cyan, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(
                iconPath,
                height: 40,
                color: Colors.cyan, // Set icon color to match the prototype
              ),
              SizedBox(width: 16),
              Text(
                title,
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

