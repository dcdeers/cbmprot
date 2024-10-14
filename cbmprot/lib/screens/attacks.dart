// import 'package:cbmprot/screens/learnscreen.dart';
// import 'package:flutter/material.dart';

// class AttackScreen extends StatelessWidget {
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
//     home: LearnScreen(),
//   ));
// }


import 'package:flutter/material.dart';

class AttackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background to black
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.cyanAccent),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Add padding around the buttons
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Make buttons stretch full width
          children: <Widget>[
            _buildListItem('Phishing', () {
              print('Phishing tapped');
            }),
            SizedBox(height: 20),
            _buildListItem('Impersonation', () {
              print('Impersonation tapped');
            }),
            SizedBox(height: 20),
            _buildListItem('Hoaxes', () {
              print('Hoaxes tapped');
            }),
            SizedBox(height: 20),
            _buildListItem('Social Engineering', () {
              print('Social Engineering tapped');
            }),
            SizedBox(height: 20),
            _buildListItem('Man-in-the-Middle Attack', () {
              print('Man-in-the-Middle Attack tapped');
            }),
            SizedBox(height: 20),
            _buildListItem('Client Hijacking', () {
              print('Client Hijacking tapped');
            }),
          ],
        ),
      ),
    );
  }

  // Helper function to build each list item (styled as a button)
  Widget _buildListItem(String title, Function() onTap) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyanAccent, // Button background color
        padding: EdgeInsets.symmetric(vertical: 20), // Make button taller
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Rounded corners
        ),
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Courier', // Monospace font to match the style
          fontSize: 24, // Font size to match the screenshot
          color: Colors.black, // Text color
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AttackScreen(),
  ));
}