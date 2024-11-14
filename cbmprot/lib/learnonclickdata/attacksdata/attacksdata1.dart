import 'package:flutter/material.dart';

class PhishingDefinitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Phishing',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        foregroundColor: Colors.white, // Back button color set to white
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
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
                "Phishing is a type of cyber attack where attackers send malicious emails, pretending to be a trusted entity to steal sensitive information such as login credentials or financial details.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'How Phishing Works:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Phishing attacks often start with an email or message that appears to come from a trusted source, such as a bank, online service, or even a friend. The attacker may include a link to a fake website designed to look like the legitimate one, where victims are tricked into entering their sensitive information. The attackers then use this information to access accounts, steal money, or commit other forms of fraud.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Types of Phishing Attacks:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. Spear Phishing: A targeted attack aimed at a specific individual or organization, often using personalized information to make the message more convincing.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Whaling: A type of phishing attack aimed at high-profile targets like executives or senior management, often seeking significant information or financial transactions.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '3. Smishing: Phishing attacks conducted through SMS text messages, tricking users into clicking malicious links or sharing personal information.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '4. Vishing: Phishing conducted through voice calls, where attackers pretend to be from a trusted institution to extract sensitive information.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. An email that looks like its from your bank asking for your login information.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. A message pretending to be from a popular online service, asking you to verify your account details.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '3. An email claiming that you have won a prize and need to provide personal details to claim it.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ],
          ),
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
