import 'package:flutter/material.dart';
import 'package:flutter_password_strength/flutter_password_strength.dart';

class PasswordComparisonScreen extends StatefulWidget {
  @override
  _PasswordComparisonScreenState createState() =>
      _PasswordComparisonScreenState();
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
        title: Text(
          'Password Comparison',
          style:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPasswordTextField('Enter Password 1', _obscurePassword1,
                  (value) {
                setState(() {
                  _password1 = value;
                });
              }, () {
                setState(() {
                  _obscurePassword1 = !_obscurePassword1;
                });
              }),
              SizedBox(height: 20),
              _buildPasswordTextField('Enter Password 2', _obscurePassword2,
                  (value) {
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
              SizedBox(height: 20),
              if (_password1.isNotEmpty && _password2.isNotEmpty)
                Center(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.circular(25), 
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Text(
                      _comparePasswords(_password1, _password2),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              SizedBox(height: 30),
              _buildInfoSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField(String labelText, bool obscureText,
      ValueChanged<String> onChanged, VoidCallback toggleObscureText) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
        labelText: labelText,
        labelStyle: TextStyle(fontFamily: 'Montserrat', color: Colors.white),
        filled: true,
        fillColor: Colors.cyanAccent.shade700.withOpacity(0.2),
        prefixIcon: Icon(Icons.lock, color: Colors.cyanAccent),
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.cyanAccent),
          onPressed: toggleObscureText,
        ),
      ),
      style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
      obscureText: obscureText,
    );
  }

  Widget _buildPasswordStrengthCard(String title, String password) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.black,
      child: Container(
        padding: EdgeInsets.all(20),
        width: 150,
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.cyanAccent),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            FlutterPasswordStrength(
              password: password,
              strengthCallback: (strength) {
                // Optional callback to get the strength value
              },
            ),
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

  Widget _buildInfoSection() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade700,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What does the Password Comparison feature do?',
            style: TextStyle(
              color: Colors.cyanAccent,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(height: 10),
          Text(
            'This feature helps you compare two passwords to determine which one is stronger. It assesses the strength of each password based on various factors such as length, uppercase letters, numbers, and special characters.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Tips for a Strong Password:',
            style: TextStyle(
              color: Colors.cyanAccent,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(height: 10),
          Text(
            '1. Use at least 12 characters for better security.\n'
            '2. Include both uppercase and lowercase letters.\n'
            '3. Add numbers and special characters to increase complexity.\n'
            '4. Avoid using easily guessable information like birthdays or common words.\n'
            '5. Use a unique password for each of your accounts.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Montserrat',
            ),
          ),
        ],
      ),
    );
  }
}
