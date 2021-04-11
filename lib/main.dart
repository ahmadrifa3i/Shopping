import 'package:flutter/material.dart';
import 'package:masterappbar/route/Home/Home.dart';
import 'package:masterappbar/route/SplachScreen/SplachScreen.dart';


void main()=>runApp(AppBarAliExpress());

class AppBarAliExpress extends StatelessWidget {
 // String numbermessage = "122";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Ali express",
        debugShowCheckedModeBanner: false,
        home:SplachScreenstate(),
      routes: <String,WidgetBuilder>{
      //  '/Login': (BuildContext context) => new LoginImageTealRoute(),
          "/home":(BuildContext context)=> HomeAliExpressState(),
          //"/home":(BuildContext context)=> HomeAliExpressState()
      },
    );
  }
}
