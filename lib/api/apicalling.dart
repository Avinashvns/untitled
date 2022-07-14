
import 'dart:convert';
import 'package:http/http.dart'as http;



class ApiCall{
  static Future<dynamic>callGetApi(String sitename,String path,Map<String,String>map)async{
    final url=Uri.https(
      sitename,
      path,
      map );
    print(url);
    try{
      final response=await http.get(url);
      if(response.statusCode!=200) throw Exception("Status Code is not 200");
      dynamic data=response.body;
      return jsonDecode(data);
    }
    catch(e){
      print(e);
      throw e;
    }
  }
}