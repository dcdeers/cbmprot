import 'package:flutter/material.dart';
import 'package:flutter_password_strength/flutter_password_strength.dart';
import 'package:password_strength_checker/password_strength_checker.dart';
import 'dart:math';

class PasswordComparisonScreen extends StatefulWidget {
  @override
  _PasswordComparisonScreenState createState() => _PasswordComparisonScreenState();
}

class _PasswordComparisonScreenState extends State<PasswordComparisonScreen> {
  String _password1 = "";
  String _password2 = "";
  bool _obscurePassword1 = true;
  bool _obscurePassword2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Comparison', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold)),
        backgroundColor: Colors.teal,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPasswordTextField('Enter Password 1', _obscurePassword1, (value) {
              setState(() {
                _password1 = value;
              });
            }, () {
              setState(() {
                _obscurePassword1 = !_obscurePassword1;
              });
            }),
            SizedBox(height: 20),
            _buildPasswordTextField('Enter Password 2', _obscurePassword2, (value) {
              setState(() {
                _password2 = value;
              });
            }, () {
              setState(() {
                _obscurePassword2 = !_obscurePassword2;
              });
            }),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildPasswordStrengthCard('Password 1 Strength', _password1),
                _buildPasswordStrengthCard('Password 2 Strength', _password2),
              ],
            ),
            SizedBox(height: 30),
            if (_password1.isNotEmpty && _password2.isNotEmpty)
              Center(
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade700,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.teal.shade400,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    _comparePasswords(_password1, _password2),
                    style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Montserrat'),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordTextField(String labelText, bool obscureText, ValueChanged<String> onChanged, VoidCallback toggleObscureText) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
        labelText: labelText,
        labelStyle: TextStyle(fontFamily: 'Montserrat', color: Colors.black),
        filled: true,
        fillColor: Colors.teal.shade50,
        prefixIcon: Icon(Icons.lock, color: Colors.teal),
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility, color: Colors.teal),
          onPressed: toggleObscureText,
        ),
      ),
      obscureText: obscureText,
    );
  }

  Widget _buildPasswordStrengthCard(String title, String password) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.grey.shade800,
      child: Container(
        padding: EdgeInsets.all(20),
        width: 150,
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 16, color: Colors.tealAccent),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            FlutterPasswordStrength(password: password),
          ],
        ),
      ),
    );
  }

  String _comparePasswords(String password1, String password2) {
    int strength1 = _calculateStrength(password1);
    int strength2 = _calculateStrength(password2);

    if (strength1 > strength2) {
      return "Password 1 is stronger.";
    } else if (strength1 < strength2) {
      return "Password 2 is stronger.";
    } else {
      return "Both passwords have equal strength.";
    }
  }

  int _calculateStrength(String password) {
    int lengthScore = password.length;
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasNumbers = password.contains(RegExp(r'[0-9]'));
    bool hasSpecialCharacters = password.contains(RegExp(r'[!@#\$&*~]'));

    int score = lengthScore;
    if (hasUppercase) score += 5;
    if (hasNumbers) score += 5;
    if (hasSpecialCharacters) score += 5;

    return score;
  }
}

class PassphraseGeneratorScreen extends StatefulWidget {
  @override
  _PassphraseGeneratorScreenState createState() => _PassphraseGeneratorScreenState();
}

class _PassphraseGeneratorScreenState extends State<PassphraseGeneratorScreen> {
  String _passphrase = "";
  List<String> words = [
    "apple",
    "orange",
    "banana",
    "cat",
    "dog",
    "house",
    "river",
    "mountain",
    "sky",
    "forest"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passphrase Generator', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _passphrase = _generatePassphrase();
                });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shadowColor: Colors.deepPurpleAccent,
                elevation: 10,
              ),
              child: Text('Generate Passphrase', style: TextStyle(fontFamily: 'Montserrat', fontSize: 18)),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.shade200,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                _passphrase,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Montserrat', color: Colors.deepPurple),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            FlutterPasswordStrength(
              password: _passphrase,
              strengthCallback: (strength) {
                // You can use the `strength` value to provide tips to the user
                print("Passphrase strength: $strength");
              },
            ),
          ],
        ),
      ),
    );
  }

  String _generatePassphrase() {
    Random random = Random();
    List<String> selectedWords = [];
    for (int i = 0; i < 4; i++) {
      selectedWords.add(words[random.nextInt(words.length)]);
    }
    return "\${selectedWords.join('-')}!\${random.nextInt(100)}";
  }
}



