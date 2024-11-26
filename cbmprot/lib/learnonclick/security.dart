import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata1.dart';
import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata2.dart';
import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata3.dart';
import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata5.dart';
import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata4.dart';
import 'package:cbmprot/learnonclickdata/seccomdata/seccomdata6.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SecurityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/SCOM.png'), 
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(height: 20),
            _buildListItem('Firewall', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirewallDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('VPN', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VPNDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Proxies', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProxyDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Security Software', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecuritySoftwareDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Data Loss Prevention', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DataLossPreventionDefinitionScreen()),
              );
            }),
            SizedBox(height: 20),
            _buildListItem('Mobile Connection Methods', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MobileConnectionMethodsScreen()),
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
          fontSize: 24,
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SecurityScreen(),
  ));
}
