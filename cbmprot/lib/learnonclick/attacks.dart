import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata1.dart';
import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata2.dart';
import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata3.dart';
import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata4.dart';
import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata5.dart';
import 'package:cbmprot/learnonclickdata/attacksdata/attacksdata6.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AttackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        foregroundColor: Colors.white,
        backgroundColor: Colors.black, 
        leading: IconButton(
          icon: const Icon(
            LineAwesomeIcons.long_arrow_alt_left_solid,
            size: 50,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/CATTACK.png'),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(height: 20),
            _buildListItem('Phishing', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhishingDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Impersonation', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImpersonationDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Hoaxes', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HoaxesDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Social Engineering', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SocialEngineeringDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Man-in-the-Middle Attack', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MitmDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Client Highjacking', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ClientHijackingDefinitionScreen()),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String title, Function() onTap) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyanAccent,
        padding: EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.white, width: 3),
        ),
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Courier',
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AttackScreen(),
  ));
}
