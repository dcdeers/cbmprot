import 'package:flutter/material.dart';

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

  List<Icon> catIcons = [

    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.video_library, color: Colors.white, size: 30),
    Icon(Icons.assessment, color: Colors.white, size: 30),
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.video_library, color: Colors.white, size: 30),
    Icon(Icons.assessment, color: Colors.white, size: 30),

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

              SizedBox()

            ],),
          ),
        ],
      ),
    );

  }
}