import 'package:cbmprot/model/model.dart';

class Data {
  static List<Category> categories = [
    Category(
      name: 'Attacks',
      quizSets: [
        QuizSet(
          name: 'ATTACK',
          questions: [
            Question(
              'Which of the following best describes a phishing attack?',
              [
                'Gaining unauthorized access to a network',
                'Sending malicious emails to steal sensitive information',
                'Infecting a system with ransomware',
                'Overwhelming a website with traffic'
              ],
              1,
            ),
            Question(
              'What is impersonation in a cyberattack context?',
              [
                'Gaining access to a system by pretending to be someone else',
                'Overloading a server with requests',
                'Encrypting data for ransom',
                'Scanning a network for vulnerabilities'
              ],
              0,
            ),
            Question(
              'What are hoaxes in the context of cybersecurity?',
              [
                'Malicious software designed to encrypt files',
                'Fake warnings or messages intended to deceive users',
                'Attempts to guess passwords through brute force',
                'Redirecting users to malicious websites'
              ],
              1,
            ),
            Question(
              'Which of the following best describes social engineering?',
              [
                'Manipulating individuals into divulging confidential information',
                'Intercepting network traffic between two parties',
                'Encrypting a user\'s files and demanding a ransom',
                'Flooding a network with illegitimate traffic'
              ],
              0,
            ),
            Question(
              'What is the main purpose of a Man-in-the-Middle (MitM) attack?',
              [
                'To steal user passwords',
                'To intercept communication between two parties',
                'To delete important data from a server',
                'To encrypt user files for ransom'
              ],
              1,
            ),
            Question(
              'What is client hijacking?',
              [
                'Taking control of a client\'s session to gain unauthorized access',
                'Sending phishing emails to steal sensitive information',
                'Infecting a system with ransomware',
                'Intercepting network traffic for malicious purposes'
              ],
              0,
            ),
            Question(
              'Which attack involves manipulating users into divulging sensitive information?',
              [
                'Phishing',
                'Social Engineering',
                'Man-in-the-Middle',
                'Client Hijacking'
              ],
              1,
            ),
            Question(
              'Which of the following is an example of impersonation?',
              [
                'Pretending to be a legitimate user to gain access',
                'Injecting malicious code into a web application',
                'Encrypting files and demanding payment',
                'Monitoring network traffic'
              ],
              0,
            ),
            Question(
              'What is a common tactic used in social engineering attacks?',
              [
                'Creating a sense of urgency to pressure victims into acting',
                'Using advanced encryption techniques to protect data',
                'Intercepting wireless communications',
                'Scanning ports to find vulnerabilities'
              ],
              0,
            ),
            Question(
              'What is the main goal of a hoax in cybersecurity?',
              [
                'To trick users into taking unnecessary or harmful actions',
                'To gain unauthorized access to a network',
                'To encrypt files for ransom',
                'To overwhelm a website with traffic'
              ],
              0,
            ),
          ],
        )
      ],
    ),

    
    Category(
      name: 'Malware',
      quizSets: [
        QuizSet(
          name: 'malware',
          questions: [
            Question(
              'What is ransomware?',
              [
                'Software designed to destroy data',
                'Malicious software that demands payment to decrypt files',
                'A program that monitors keystrokes',
                'A harmless software update'
              ],
              1,
            ),
            Question(
              'Which of the following is NOT a type of malware?',
              [
                'Worm',
                'Trojan horse',
                'Firewall',
                'Spyware'
              ],
              2,
            ),
            Question(
              'What does spyware do?',
              [
                'Encrypts data for ransom',
                'Tracks and collects user information without consent',
                'Attacks other computers on the network',
                'Blocks unauthorized access to a network'
              ],
              1,
            ),
          ],
        ),
      ],
    ),
    Category(
      name: 'Security',
      quizSets: [
        QuizSet(
          name: 'sec',
          questions: [
            Question(
              'What is the purpose of a firewall?',
              [
                'To physically protect servers from fire',
                'To encrypt communications between computers',
                'To prevent unauthorized access to or from a private network',
                'To scan for viruses'
              ],
              2,
            ),
            Question(
              'Which of the following is a primary function of an Intrusion Detection System (IDS)?',
              [
                'Prevent malicious activity',
                'Detect and alert on suspicious activity',
                'Encrypt network traffic',
                'Block all incoming connections'
              ],
              1,
            ),
            Question(
              'What does a VPN do?',
              [
                'Scans for malware',
                'Creates a secure, encrypted connection over the internet',
                'Blocks all unauthorized incoming traffic',
                'Increases the speed of internet connections'
              ],
              1,
            ),
          ],
        ),
      ],
    ),
    Category(
      name: 'Ports',
      quizSets: [
        QuizSet(
          name: 'port',
          questions: [
            Question(
              'Which port number is typically used for HTTP?',
              [
                '80',
                '443',
                '21',
                '25'
              ],
              0,
            ),
            Question(
              'Which protocol is commonly used on port 443?',
              [
                'FTP',
                'SSH',
                'HTTPS',
                'SMTP'
              ],
              2,
            ),
            Question(
              'What service uses port 22 by default?',
              [
                'Telnet',
                'SSH',
                'SMTP',
                'HTTP'
              ],
              1,
            ),
          ],
        ),
      ],
    ),
    // Add more categories with quiz sets and questions
  ];
}
