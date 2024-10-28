import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata1.dart';
import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata2.dart';
import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata3.dart';
import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata4.dart';
import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata5.dart';
import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata6.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AttackScreen extends StatelessWidget {
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
      
      backgroundColor: Colors.black, // Set background to black
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Add padding around the buttons
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Make buttons stretch full width
          children: <Widget>[
            // Add image at the top of the list
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/CATTACK.png'), // Replace with your image path
                
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(height: 20),
            _buildListItem('Phishing', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhishingDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Impersonation', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImpersonationDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Hoaxes', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HoaxesDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Social Engineering', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SocialEngineeringDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Man-in-the-Middle Attack', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MitmDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Client Highjacking', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ClientHijackingDefinitionScreen()),
              );
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
          fontFamily: 'Courier',
          letterSpacing: 1.5, // Adjust the value for more or less spacing
          fontWeight: FontWeight.bold, // Monospace font to match the style
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
