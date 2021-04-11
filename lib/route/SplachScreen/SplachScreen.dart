import 'dart:async';

import 'package:flutter/material.dart';
class SplachScreenstate extends StatefulWidget{

  _SplachScreen createState()=>_SplachScreen();
}
class _SplachScreen extends State<SplachScreenstate>{
  String text="first";
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.white,
      body:Center(

    child:Text("Ali Express",style: Theme.of(context).textTheme.body1.copyWith(    color: Colors.redAccent,))
  ));
  }

  @override
  void initState() {
    super.initState();



    startTime();

  }
  startTime() async{
    print("start time");
    var duration = new Duration(seconds:6);
    return new Timer(duration, navigatonpage);
 // }
 //   BuildContext>>widget

  }
  Future<void> navigatonpage(){
    print("finish time");
   // Navigator.of(context).push(route);//onback  btzzakar first
   // Navigator.of(context).pushNamed("/home");
    //splach first
 //   Navigator.of(context).pushReplacement(route);//onback close application
    //new page =>first
  //  Navigator.of(context).pushReplacementNamed("/home");
    //pushreplacemnetNamed  => root sar home
    Navigator.of(context).pushReplacementNamed('/home');//onbackpressed =.close application
    //pushNamed  => home mch root //back brtdni splachscreen
   // Navigator.of(context).pushNamed("/home");// onbackpressed=>onback splach screen

  }


showmeText(){
    int a=0;
    String b="ahmad";
    List<String> ldc=["1","2"];

  //  Toas
    try {
      print(ldc[3]);
    }catch(e){
      print(e.toString());
      print("have a error");
      setState(() {
        text="you have error";
      });
    }

}
}