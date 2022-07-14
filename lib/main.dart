import 'package:flutter/material.dart';
import 'package:untitled/backenddata.dart';
import 'package:untitled/sendpage.dart';


void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Webapp Business",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey,
      ),
      home: Show(),
    );
  }

}

