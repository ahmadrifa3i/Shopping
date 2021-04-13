import 'package:flutter/material.dart';
import 'package:masterappbar/rifaidata/dahsboard/dashboard_pay_bill.dart';
import 'package:masterappbar/route/Home/Home.dart';
import 'package:masterappbar/route/SplachScreen/SplachScreen.dart';
import 'package:masterappbar/route/details/details.dart';
import 'package:masterappbar/route/detailsPushReplacement/detailsreplecemnt.dart';
import 'package:masterappbar/route/rayan/fe/ch.dart';
import 'package:masterappbar/route/rayan/fe/fe.dart';
import 'package:masterappbar/route/rayan/h2o.dart';


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
          "/details":(BuildContext context)=> DetailsAliExpressState(),
          "/detailsrep":(BuildContext context)=> DetailRepsAliExpressState(),
          "/h2o":(BuildContext context)=> hoState(),
          "/fe":(BuildContext context)=> feState(),
          "/ch":(BuildContext context)=> ChState(),
        "/dashboard":(BuildContext context)=> DashboardPayBillRoute()
          //"/home":(BuildContext context)=> HomeAliExpressState()
      },
    );
  }
}
