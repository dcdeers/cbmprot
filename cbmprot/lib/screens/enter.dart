import 'package:cbmprot/screens/home.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
              ),

                            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(70))
                ),

                child: Center(child: Image.asset("images/1.png", scale: 0.5,)),

              ),
            ],
          ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.666,
                  decoration: BoxDecoration(
                    color: Colors.purple, 
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.666,
                  padding: EdgeInsets.only(top: 40, bottom: 30),
                  decoration: BoxDecoration(
                    color: Colors.black, 
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(70))
                  ),

                    child: Column(children: [
                      Text("Version 1.0", 
                      style: TextStyle(fontSize: 20, 
                      fontFamily: 'IBMPlexMono', 
                      fontWeight: FontWeight.w600, 
                      color: Colors.white,
                          ),
                        ),

                        SizedBox(height: 60),
                        Material(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                              child: Text("Get Started", style: TextStyle(color: Colors.white, fontFamily: 'IBMPlexMono',fontWeight: FontWeight.w600,),),
                            ),
                          ),
                        )
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