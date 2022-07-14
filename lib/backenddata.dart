
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:untitled/api/apicalling.dart';
import 'package:untitled/utils/backenddetails.dart';
import 'package:http/http.dart'as http;
import 'package:flutter/foundation.dart';
import 'package:untitled/utils/functionuse.dart';

import 'utils/backenddetails.dart';


Future<List<BackendDetails>> fetchDetails()async{
print("Fetch details");
  String sitename="gorest.co.in";
  String path="/public/v2/users";
  Map<String,String>map=Map();

  var parsed=await ApiCall.callGetApi(sitename, path, map);
  //var str=parsed['data'];
  var str=parsed;
  //print("Output $str");
  return compute(parsedDetails,str);
}

List<BackendDetails> parsedDetails(var parsed){
  parsed=parsed.cast<Map<String,dynamic>>();
  return parsed.map<BackendDetails>((json)=>BackendDetails.fromJson(json)).toList();
}


class Show extends StatefulWidget{
  @override
  _ShowState createState()=>_ShowState();
}
class _ShowState extends State<Show>{
  @override
  Widget build(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    final sidePadding= EdgeInsets.symmetric(horizontal: padding);

    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 0),
      body: SafeArea(
        child: ListView(
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
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text("Avinash"),
                            Text("5634"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text("Ravi"),
                            Text("8957"),
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
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text("Simran"),
                            Text("563412"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              addVerticalSpace(10),
              Padding(
                padding: sidePadding,
                child: Text("Contact",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),),
              ),
              addVerticalSpace(10),

              Container(
                padding: const EdgeInsets.all(5.0),
                child: FutureBuilder<List<BackendDetails>>(
                  future: fetchDetails(),
                  builder: (context,snapshot){
                    if(snapshot.hasError){
                      return const Center(
                        child: Text("An error has occured"),
                      );
                    }
                    else if(snapshot.hasData){
                      return DataScreen(details: snapshot.data!);
                    }
                    else{
                      return const Center(
                          child: CircularProgressIndicator(),
                      );
                    }
                  }
                ),
              ),
            ],
        ),
      ),
    );
  }
}

class DataScreen extends StatelessWidget{
  const DataScreen({Key?Key,required this.details}):super(key:Key);
  final List<BackendDetails> details;
  @override
  Widget build(BuildContext context){
    return Container(
      width: 100,
      height: 500,
      child: Column(
        children: [

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: details.length,
                itemBuilder: (context , index){
                  return Container(
                    //padding: const EdgeInsets.all(5),
                    //color: Colors.grey,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage("assets/avi.jpeg"),
                          ),
                          title: Text(details[index].name,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w700),),
                          subtitle: Text(details[index].id.toString(),style: TextStyle(fontSize: 13,color: Colors.white,),),
                        ),
                        Divider(
                          height: 1,
                          indent: 25,
                          endIndent: 25,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  );
                }
              ),
            ),
          ),
        ],
      ),
    );
  }
}