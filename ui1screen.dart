import 'package:flutter/material.dart';

class Ui1Screen extends StatefulWidget {
  const Ui1Screen({Key? key}) : super(key: key);

  @override
  State<Ui1Screen> createState() => _Ui1ScreenState();
}

class _Ui1ScreenState extends State<Ui1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            width: 400,
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9YGDLvP39LcOw9S4-lLtRgQDIZWtZmMhMGw&usqp=CAU',height: 350,width: 400,fit:BoxFit.cover,),
          ),
          SizedBox(height: 30),


          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text("Oeschinen lake campground",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 330),
                height: 20,
                width: 20,
                child: Icon(Icons.star,color: Colors.red,),
              ),
              Text(" 41",style:TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
            ],
          ),


          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text("kandersteg, Switzerland"),
          ),

          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 70),
              Column(
                children: [
                  Icon(Icons.call,color: Color(0xff1f96f2),),
                  SizedBox(height: 5),
                  Text('CALL',style: TextStyle(color: Color(0xff1f96f2)),),
                ],
              ),

              SizedBox(width: 70),
              Column(
                children: [
                  Icon(Icons.route,color: Color(0xff1f96f2),),
                  SizedBox(height: 5),
                  Text('ROUTE',style: TextStyle(color: Color(0xff1f96f2)),),
                ],
              ),

              SizedBox(width: 70),
              Column(
                children: [
                  Icon(Icons.share,color: Color(0xff1f96f2),),
                  SizedBox(height: 5),
                  Text('SHARE',style: TextStyle(color: Color(0xff1f96f2)),),
                ],
              ),
            ],
          ),

          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 320,
                    child: Text("When the app first launches, the star is solid red, indicating that this lake has previously been favorited. The number next to the star indicates that 41 people have favorited this lake. After completing this tutorial, tapping the star removes its favorited status, replacing the solid star with an outline and decreasing the count. Tapping again favorites the lake, drawing a solid star and increasing the count."),

                  ),
                ],
              ),
            ],
          ),

        ],
      ),

    );
  }
}


