import 'package:flutter/material.dart';
class hoState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body:Column(
          children: [

            Text("ho"),
            Text("ho"),
            Text("ho"),
            Text("ho"),
            Text("ho"),
            Text("ho"),
            Text("ho"),
        InkWell( child: Text("to page fe"),onTap:() {

          Navigator.of(context).pushNamed("/fe");
        },),


          ],
        )
      //Text("details pushnamedreplacement"),

    );
  }


}