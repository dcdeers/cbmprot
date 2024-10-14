import 'package:cbmprot/screens/home.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Material(

      child: Container(

        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(

          children: [

            // Top image section
            Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(

                child: ClipRRect(

                  borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                  child: Image.asset(

                    "images/1.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover, // Ensures the image fills the space properly
                  ),
                ),
              ),
            ),

            // // Purple background section
            // Align(

            //   alignment: Alignment.bottomCenter,
            //   child: Container(

            //     width: MediaQuery.of(context).size.width,
            //     height: MediaQuery.of(context).size.height / 2.666,
            //     decoration: BoxDecoration(color: Colors.purple),
            //   ),
            // ),

            // Bottom content section
            Align(

              alignment: Alignment.bottomCenter,
              child: Container(

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: EdgeInsets.only(top: 40, bottom: 30),
                decoration: BoxDecoration(

                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100), bottomRight: Radius.circular(100)),
                ),

                child: Column(

                  children: [

                    Text(
                      
                      "Version 1.0",
                      style: TextStyle(

                        fontSize: 20,
                        fontFamily: 'IBMPlexMono',
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 60),
                    Material(

                      color: Color.fromRGBO(0, 194, 203, 100),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(

                        onTap: () {

                          Navigator.push(

                            context,
                            MaterialPageRoute(

                              builder: (context) => HomePage(),
                            ),
                          );
                        },

                        child: Container(

                          padding: EdgeInsets.symmetric(

                            vertical: 15,
                            horizontal: 80,
                          ),

                          child: Text(

                            "Get Started",
                            style: TextStyle(

                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'IBMPlexMono',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

