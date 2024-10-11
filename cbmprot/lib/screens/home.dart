import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class HomePage extends StatelessWidget{

  //create static data to lists

  List catNames = [

    "Category",
    'Classes',
    'Free Courses',
    'Free Courses',
    'Free Courses',
  ];

  List<Color> catColors = [

    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.red,
  ];

// List<FaIcon> catIcons = [
//   FaIcon(FontAwesomeIcons.squareCheck, color: Colors.white, size: 30), // Dashboard
//   FaIcon(FontAwesomeIcons.gamepad, color: Colors.white, size: 30), // Gamepad
//   FaIcon(FontAwesomeIcons.bullhorn, color: Colors.white, size: 30), // Assessment
//   FaIcon(FontAwesomeIcons.listAlt, color: Colors.white, size: 30), // Category
//   FaIcon(FontAwesomeIcons.video, color: Colors.white, size: 30), // Video Library
//   FaIcon(FontAwesomeIcons.tasks, color: Colors.white, size: 30), // Assessment (alternative)
// ];



List<Icon> catIcons = [
  Icon(LineAwesomeIcons.clipboard_check_solid, color: Colors.white, size: 50), // Dashboard
  Icon(LineAwesomeIcons.brain_solid, color: Colors.white, size: 50), // Assessment
  Icon(LineAwesomeIcons.newspaper_solid, color: Colors.white, size: 50), // Category
  Icon(LineAwesomeIcons.list_alt_solid, color: Colors.white, size: 50), // Video Library
  Icon(LineAwesomeIcons.list_alt_solid, color: Colors.white, size: 30), // Video Library
];


  List imgList = [ //icons list page

    '3',
    '4',
    '5',
    '6',
  ];

  @override

  Widget build(BuildContext context){

    return Scaffold(

      body: ListView(

        children: [
          
          Container(

            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(

              color: Colors.cyan,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),),
            ),

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Icon(Icons.dashboard, size: 30,color: Colors.black,),
                    Icon(Icons.notifications, size: 30,color: Colors.black,),
                  ],
                ),

                SizedBox(height: 20),
                Padding(

                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text("Hello User", style: TextStyle(color: Colors.white, fontFamily: 'IBMPlexMono',fontWeight: FontWeight.w600,),),
                ),

                Container(

                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(

                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: TextFormField(

                    decoration: InputDecoration(

                      border: InputBorder.none,
                      hintText: "search here....",
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                      prefixIcon: Icon(Icons.search, size: 25,),
                    ),
                  ),
                ),  
              ],
            ),
          ),
          
          Padding(padding:

            EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(children: [

              GridView.builder(

                itemCount: catNames.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                  crossAxisCount: 3,
                  childAspectRatio: 1.1,
                ),

                itemBuilder: (context, index) {
                  
                  return Column(

                    children: [

                      Container(

                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(

                          color: catColors[index],
                          shape: BoxShape.circle,
                        ),

                        child: Center(child: catIcons[index],),
                      ),

                      SizedBox(height: 10),
                      Text(

                        catNames[index],
                        style: TextStyle(color: Colors.black, fontFamily: 'IBMPlexMono',fontWeight: FontWeight.w600,),
                      ),
                    ],                    
                  );
                },
              ),

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("What is this?", style: TextStyle(color: Colors.red, fontFamily: 'IBMPlexMono',fontWeight: FontWeight.w600,),),

                  Text("Whon is this?", style: TextStyle(color: Colors.blue, fontFamily: 'IBMPlexMono',fontWeight: FontWeight.w600,),),
                ],
              ),

              SizedBox(height: 10),
              GridView.builder(

                itemCount: imgList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 * 240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),

                itemBuilder: (context, index){

                  return InkWell(

                    onTap: (){},
                    child: Container(

                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,                        
                      ),

                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          // Use the icon from catIcons

                          Padding(

                            padding: EdgeInsets.all(10),
                            child: catIcons[index], // Using the FaIcon from the list
                          ),

                          // SizedBox(height: 10),
                          // Text(

                          //   "Icon ${index + 1}", // Change this to your desired titles
                          //   style: TextStyle(

                          //     fontFamily: 'IBMPlexMono',
                          //     fontSize: 22,
                          //     color: Colors.amber,
                          //     fontWeight: FontWeight.w600,
                          //   ),
                          // ),

                          SizedBox(height: 10),
                          Text(
                            
                            "TEST VID",
                            style: TextStyle(
  
                              fontSize: 20,
                              color: Colors.lime,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              ),
            ],),
          ),
        ],
      ),
    );
  }
}










