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
            Question(
              'How does a computer virus typically spread?',
              [
                'By copying itself to other programs or files',
                'By demanding payment from users',
                'By providing security updates',
                'By monitoring web traffic'
              ],
              0,
            ),
            Question(
              'What is the main difference between a worm and a virus?',
              [
                'A worm requires user interaction to spread, while a virus does not',
                'A virus requires user interaction to spread, while a worm does not',
                'A worm only affects hardware, while a virus affects software',
                'A virus only targets servers, while worms target clients'
              ],
              1,
            ),
            Question(
              'What is a Trojan horse?',
              [
                'A self-replicating piece of software',
                'A malicious program disguised as legitimate software',
                'A program that tracks user activity',
                'A tool for encrypting files'
              ],
              1,
            ),
            Question(
              'What is the main purpose of adware?',
              [
                'To display unwanted advertisements to users',
                'To encrypt user files for ransom',
                'To delete system files',
                'To block incoming network connections'
              ],
              0,
            ),
            Question(
              'What is a backdoor in the context of malware?',
              [
                'A security feature that protects sensitive data',
                'A vulnerability that allows unauthorized remote access to a system',
                'A tool for encrypting communications',
                'A method for blocking pop-up advertisements'
              ],
              1,
            ),
            Question(
              'Which of the following best describes a computer worm?',
              [
                'A program that encrypts files',
                'A type of malware that spreads autonomously across networks',
                'A software that blocks unauthorized access',
                'A tool for monitoring system performance'
              ],
              1,
            ),
            Question(
              'What is the goal of ransomware?',
              [
                'To spy on user activities',
                'To provide software updates',
                'To encrypt user data and demand payment for decryption',
                'To install unwanted advertisements'
              ],
              2,
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
          Question(
            'What is the purpose of a proxy server?',
            [
              'To filter traffic and provide anonymity on the internet',
              'To detect unauthorized access attempts',
              'To encrypt data between endpoints',
              'To increase the speed of a local network'
            ],
            0,
          ),
          Question(
            'What is Data Loss Prevention (DLP)?',
            [
              'A tool to detect malware',
              'A system that helps prevent sensitive data from leaving an organization',
              'A tool to monitor network speed',
              'A system that increases hardware performance'
            ],
            1,
          ),
          Question(
            'Which of the following is a benefit of using a VPN?',
            [
              'Enhanced privacy by masking your IP address',
              'Increased download speed',
              'Protection against viruses',
              'Automatic file backup'
            ],
            0,
          ),
          Question(
            'How does a firewall differ from an IDS?',
            [
              'A firewall blocks and filters network traffic, while an IDS detects suspicious activity',
              'A firewall encrypts data, while an IDS scans for malware',
              'A firewall speeds up the internet, while an IDS limits access',
              'A firewall provides anonymity, while an IDS detects vulnerabilities'
            ],
            0,
          ),
          Question(
            'What role do proxies play in network security?',
            [
              'They act as intermediaries to filter and secure communications',
              'They directly block malware from entering the system',
              'They provide full encryption for network traffic',
              'They scan for unauthorized hardware in the network'
            ],
            0,
          ),
          Question(
            'Which of the following is true about security software?',
            [
              'It can be used to prevent, detect, and respond to security threats',
              'It automatically blocks all internet connections',
              'It only works when connected to a VPN',
              'It is exclusively used for encrypting emails'
            ],
            0,
          ),
          Question(
            'What is the most secure mobile connection method for data privacy?',
            [
              'Using a public Wi-Fi hotspot',
              'Using mobile data with a VPN enabled',
              'Using unsecured Bluetooth',
              'Using a proxy server without encryption'
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
