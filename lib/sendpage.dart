import 'package:flutter/material.dart';
import 'package:untitled/backenddata.dart';
import 'package:untitled/utils/borderbox.dart';
import 'package:untitled/utils/functionuse.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    final sidePadding= EdgeInsets.symmetric(horizontal: padding);

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      elevation: 10,
                      color:Colors.grey,
                      child:Container(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text("Send",style: TextStyle(fontSize: 30,color: Colors.white),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text("Recently",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),),
              ),
              addVerticalSpace(10),
              Padding(
                padding: sidePadding,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/avi.jpeg"),
                      ),
                      addHorizontalSpace(5),
                      Container(
                        height: 60,
                        width: 100,
                        color: Colors.grey.shade300,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text("Robert"),
                            Text("1234"),
                          ],
                        ),
                      ),
                      addHorizontalSpace(10),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/avi.jpeg"),
                      ),
                      addHorizontalSpace(5),
                      Container(
                        height: 60,
                        width: 100,
                        color: Colors.grey.shade300,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text("Robert"),
                            Text("1234"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text("Contact",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),),
              ),
              addVerticalSpace(10),
              Padding(
                padding: sidePadding,
                child: Show(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
