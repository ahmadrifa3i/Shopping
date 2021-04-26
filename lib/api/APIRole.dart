

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:masterappbar/%20model/person.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiRole{



 static Future<void> getRole(String Email,String Password) async{
    print("ready to get api call");
    var data={
      'username':Email,

      'password':Password
    };

    try{
      final response=await http.post("http://tv.mla-uae.com/api/mobile/login",
          body:data,
          headers: {"Content-Type": "application/x-www-form-urlencoded"});
      if(response.statusCode==200){
        print(response.statusCode);
        /*      {
          "statusCode": 200,
    "message": "Success",
    "content": {
    "Token": "blpL9FwXXEa4KHR9Mk_skRm7q8PVsp3Khi6EEvl1RXESZDLIM5btvysl14i5psHDLS_V6y0EI-NJHjObp_3wFkLfIKXJO2FwGePaV_6BHGUPLUHPZisRr6dc6hYLSktvBozSIB8UhD9rMSKNVdnPoIlJIxrOMT5blMOz2USRjG3N56wiKp_UwEBKvh9hBR65wLb2um6C3QnyACLRv4ZMdSPT4_G9kL7ZsaOZoVGUq-La3TbXdRFh1QrYp8XsDXtUikxcPyKpPGH9rMqgA775psMk59t0oNnhmNAGWMjdBsI",
    "Role": "Advertiser"
    }
    }*/Map<String,dynamic> responseData=json.decode(response.body);
        print(responseData);
        if(responseData["statusCode"]==200){
          print("save data");


       //   for(var u in responseData["content"])
          User.insertUser(User.fromJsonToMap(responseData["content"]));
        }
     //   return true;

      }
      else {
        print(response.statusCode);
     //   return false;
      }

    }
    catch(e){
      print("Exception$e");
    }





  }


}