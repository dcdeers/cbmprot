import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata1.dart';
import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata2.dart';
import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata3.dart';
import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata5.dart';
import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata4.dart';
import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata6.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SecurityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background to black
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Colors.cyanAccent),
      //     onPressed: () {
      //       Navigator.pop(context); // Go back to the previous screen
      //     },
      //   ),
      // ),

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
                  image: AssetImage('images/SCOM.png'), // Replace with your image path
                
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),

            SizedBox(height: 20),
            _buildListItem('Firewall', () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirewallDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('VPN', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VPNDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Proxies', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProxyDefinitionScreen()),
              );
            }),

            SizedBox(height: 20),
            _buildListItem('Security Software', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecuritySoftwareDefinitionScreen()),
              );
            }),

              SizedBox(height: 20),
            _buildListItem('Data Loss Prevention', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DataLossPreventionDefinitionScreen()),
              );
            }),

            SizedBox(height: 20),
            _buildListItem('Mobile Connection Methods', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MobileConnectionMethodsScreen()),
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
    home: SecurityScreen(),
  ));
}