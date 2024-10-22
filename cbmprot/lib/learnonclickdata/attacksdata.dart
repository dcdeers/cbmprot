import 'package:flutter/material.dart';

class PhishingDefinitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phishing', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Definition:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Phishing is a type of cyber attack where attackers send malicious emails pretending to be a trusted entity to steal sensitive information such as login credentials or financial details.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Examples of Phishing:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. An email that looks like it\'s from your bank asking for your login information.\n'
              '2. A message pretending to be from a popular online service, asking you to verify your account details.\n'
              '3. An email claiming that you have won a prize and need to provide personal details to claim it.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              child: Text('Back', style: TextStyle(fontFamily: 'Montserrat', fontSize: 18)),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

// Usage example:
// Navigator.push(
//   context,
//   MaterialPageRoute(builder: (context) => PhishingDefinitionScreen()),
// );
