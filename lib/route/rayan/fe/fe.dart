import 'package:flutter/material.dart';
class feState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body:Center(
        child:Column(
          children: [
            Text("fe"),
            Text("fe"),
            Text("fe"),
            Text("fe"),
            Text("fe"),
            Text("fe"),
            InkWell( child: Text("to page ch"),onTap:() {

              Navigator.of(context).pushReplacementNamed("/ch");
            },),

          ],
        ))
      //Text("details pushnamedreplacement"),

    );
  }


}
