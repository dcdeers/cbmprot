import 'package:flutter/material.dart';

class MobileConnectionMethodsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Connection Methods', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.white)),
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
                "Mobile connection methods refer to the different technologies that enable mobile devices to connect to the internet or other networks. These methods provide communication capabilities for mobile users, ensuring they stay connected wherever they are. Common mobile connection methods include cellular networks, Wi-Fi, Bluetooth, and Near Field Communication (NFC).",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Types of Mobile Connection Methods:',
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
                    '1. Cellular Networks: Mobile devices connect to the internet using 3G, 4G, or 5G cellular networks provided by telecommunications carriers. These networks provide wide-area coverage and are commonly used for mobile internet access.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Wi-Fi: Mobile devices connect to a Wi-Fi network to access the internet. Wi-Fi provides high-speed connectivity within a limited range and is commonly used in homes, offices, and public places.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '3. Bluetooth: Bluetooth is a short-range wireless technology that allows mobile devices to connect to other Bluetooth-enabled devices for file sharing, tethering, or communication.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '4. Near Field Communication (NFC): NFC is a short-range wireless technology that allows mobile devices to communicate with other NFC-enabled devices or tags for tasks such as contactless payments or data exchange.',
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
                'Examples of Mobile Connection Methods in Use:',
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
                    '1. A user connects their smartphone to a 4G network while traveling to access email and browse the internet.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. A user connects their mobile device to a public Wi-Fi network at a coffee shop to watch videos online.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '3. A user transfers files from their smartphone to a laptop using Bluetooth, allowing for quick and convenient data sharing.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '4. A user makes a contactless payment using NFC on their smartphone, tapping it on a payment terminal to complete the transaction.',
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
//   MaterialPageRoute(builder: (context) => MobileConnectionMethodsScreen()),
// );
