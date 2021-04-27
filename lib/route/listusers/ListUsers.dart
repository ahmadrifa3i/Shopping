import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:masterappbar/%20model/Users.dart';
import 'package:masterappbar/api/APIget.dart';
import 'package:masterappbar/database/database.dart';



class ListUsers extends StatefulWidget {
  @override
  _StateListUsers createState() => _StateListUsers();
}

class _StateListUsers extends State< ListUsers> {
  ALiExpressStore databaseHelper = ALiExpressStore();
  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder<List<Users>>(
          future: databaseHelper.getallUsers(),

          builder: (context, snapshot) {
    if (snapshot.connectionState != ConnectionState.done) {
    // return: show loading widget
    }
    if (snapshot.hasError) {

    // return: show error widget
    }
  //  snapshot.
List<Users> entries=snapshot.data!=null?snapshot.data:[];
  return  ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
    return Container(
    height: 50,
   // color: Colors.amber[colorCodes[index]],
    child: Column(children: [
      ListTile(
        title:Text('title ${entries[index].title}',style: TextStyle(color: entries[index].completed?Colors.green:Colors.red),) ,
        subtitle: Text('userid ${entries[index].userId}') ,

      ),

    ],)

    );
    }
    );
    });
  }
@override
void initState(){
    super.initState();
    getapi();
}

Future<void> getapi() async{
  await Apiget.getRole();
}


}
