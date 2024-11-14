import 'package:flutter/material.dart';

class ClientHijackingDefinitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Client Hijacking', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.white)),
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
              Text(textAlign: TextAlign.justify,
                "Client hijacking, also known as session hijacking, is a type of cyber attack where an attacker takes control of a user's session, often by stealing the session ID. This allows the attacker to impersonate the user and gain unauthorized access to the user's account or data.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'How Client Hijacking Works:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 10),
              Text(textAlign: TextAlign.justify,
                'Client hijacking typically involves intercepting or stealing the session ID that is used to identify the users session with a server. The attacker can use techniques such as packet sniffing, cross-site scripting (XSS), or malware to obtain the session ID. Once the session ID is obtained, the attacker can use it to impersonate the victim, gaining unauthorized access to the victims account and performing actions on their behalf.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Types of Client Hijacking Attacks:',
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
                  Text(textAlign: TextAlign.justify,
                    '1. Session Fixation: The attacker sets a known session ID for the victim, and then takes control of the session once the victim logs in.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '2. Session Sidejacking: The attacker uses packet sniffing to intercept session cookies and gain unauthorized access to the victims session.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '3. Cross-Site Scripted (XSS) Attacks: The attacker injects malicious scripts into a trusted website, which then runs in the victims browser and steals the session ID.',
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
                'Examples of Client Hijacking:',
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
                  Text(textAlign: TextAlign.justify,
                    '1. An attacker intercepts a users session cookie while they are connected to a public Wi-Fi network, gaining unauthorized access to the users account.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '2. A malicious script is injected into a legitimate website, which steals the session ID of any user who visits the website.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '3. An attacker sets up a fake login page that fixes the session ID, allowing them to hijack the session once the victim logs in.',
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
//   MaterialPageRoute(builder: (context) => ClientHijackingDefinitionScreen()),
// );
