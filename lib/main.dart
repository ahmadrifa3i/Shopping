import 'package:flutter/material.dart';
import 'package:masterappbar/route/Home.dart';


void main()=>runApp(AppBarAliExpress());

class AppBarAliExpress extends StatelessWidget {
 // String numbermessage = "122";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Ali express",
        debugShowCheckedModeBanner: false,
        home: HomeAliExpressState()
    );
  }
}
