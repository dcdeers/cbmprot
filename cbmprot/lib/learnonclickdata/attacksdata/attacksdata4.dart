import 'package:flutter/material.dart';

class SocialEngineeringDefinitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Engineering', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
        foregroundColor: Colors.white,
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
                "Social engineering is a form of manipulation where attackers use psychological tactics to trick individuals into revealing confidential information or performing actions that compromise security.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'How Social Engineering Works:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 10),
              Text(textAlign: TextAlign.justify,
                'Social engineering attacks exploit human emotions such as fear, curiosity, and trust. Attackers may pose as someone trustworthy or use convincing scenarios to persuade their target into providing sensitive information or access to systems. The attacker may use techniques such as impersonation, baiting, or phishing to achieve their goal.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Types of Social Engineering Attacks:',
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
                    '1. Pretexting: The attacker creates a fabricated scenario to trick the target into providing information or access. This may involve impersonating an authority figure or trusted individual.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '2. Baiting: The attacker lures the target with an enticing offer, such as free software or a prize, to get them to reveal sensitive information or install malware.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '3. Tailgating: The attacker gains physical access to a secure area by following closely behind an authorized person, relying on the targets willingness to hold the door open.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '4. Phishing: The attacker sends fraudulent messages, often through email, that appear to come from a legitimate source, aiming to trick the recipient into revealing sensitive information or clicking on malicious links.',
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
                'Examples of Social Engineering:',
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
                    '1. An attacker posing as an IT support technician calls an employee and asks for their password to fix an issue.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '2. A USB drive labeled "Confidential" is left in a public place, enticing someone to pick it up and plug it into their computer, unknowingly installing malware.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(textAlign: TextAlign.justify,
                    '3. An attacker sends an email pretending to be from the targets bank, requesting that they verify their account details by clicking on a link.',
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
