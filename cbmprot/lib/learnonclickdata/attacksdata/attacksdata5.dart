import 'package:flutter/material.dart';

class MitmDefinitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Man-in-the-Middle Attack', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.white)),
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
                "A Man-in-the-Middle (MitM) attack is a type of cyber attack where the attacker secretly intercepts and relays messages between two parties who believe they are directly communicating with each other. The attacker can eavesdrop on the communication or alter the data being transmitted.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'How Man-in-the-Middle Attacks Work:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 10),
              Text(textAlign: TextAlign.justify,
                'In a Man-in-the-Middle attack, the attacker positions themselves between two communicating parties, intercepting and potentially altering the communication without either party being aware. The attacker might use techniques such as session hijacking, packet sniffing, or rogue Wi-Fi hotspots to carry out the attack. The main goal is usually to steal sensitive information, such as login credentials, or to manipulate the communication for malicious purposes.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Types of Man-in-the-Middle Attacks:',
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
                    '1. Packet Sniffing: The attacker intercepts and reads data packets being transmitted between two parties, often using tools to capture sensitive information such as passwords.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '2. SSL Stripping: The attacker downgrades a secure HTTPS connection to an unencrypted HTTP connection, allowing them to intercept data transmitted between the victim and the website.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '3. Session Hijacking: The attacker takes over a user session after they have authenticated, gaining unauthorized access to the victims account.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '4. Rogue Wi-Fi Hotspots: The attacker sets up a fake Wi-Fi network that looks legitimate, tricking victims into connecting to it. Once connected, the attacker can intercept and manipulate the victims internet traffic.',
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
                'Examples of Man-in-the-Middle Attacks:',
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
                    '1. An attacker intercepting and altering communication between a user and a banking website, leading to financial loss for the victim.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '2. A fake Wi-Fi network set up in a coffee shop, where users unknowingly connect and have their data intercepted by the attacker.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '3. An attacker using packet sniffing tools to capture login credentials of users connected to a public Wi-Fi network.',
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
//   MaterialPageRoute(builder: (context) => MitmDefinitionScreen()),
// );
