import 'dart:io';
import 'dart:convert';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:masterappbar/%20model/person.dart';
import 'package:masterappbar/Modelview/homeprovider.dart';
import 'package:masterappbar/Modelview/homeprovider.dart';
import 'package:masterappbar/api/APIRole.dart';
import 'package:masterappbar/api/APIget.dart';
import 'package:masterappbar/database/database.dart';
import 'package:masterappbar/rifaidata/Model/Carousel.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class HomeAliExpressState extends StatefulWidget{
//  HomeAliExpress({Key key,this.title}):super(key:key);
  @override
  HomeAliExpress createState() => HomeAliExpress();

}


class HomeAliExpress extends State<HomeAliExpressState>{
  ALiExpressStore databaseHelper = ALiExpressStore();
//  MyHomePage({Key key, this.title}) : super(key: key);
bool finishgetdata=false;
 User ahmad;
  String numbermessage="122";
  String title;
  int counter=0;
  String Role="";
  String token="";

ALiExpressStore db=new ALiExpressStore();
  updatenumbermessage(){


  }

@override
void initState() {
  super.initState();
//  finishgetdata=false;
  numbermessage=0.toString();

  //get
  // Map<String,dynamic> per={
  //   "Id":1,
  //   "Name":"ahmad rifai",
  //   "Mails":"rifai@gmail.com"
  //
  // };


//  readydb();
  getdatafromapi();
 // delay();
 // ApiRole.getRole("advertiser@tv.com", "P@ssw0rd");
 //getRole("advertiser@tv.com", "P@ssw0rd");
// getdata();

}

Future <void> getdatafromapi() async {
    setState(() {
      finishgetdata=false;
    });
await ApiRole.getRole("advertiser@tv.com", "P@ssw0rd");
await Apiget.getRole();
setState(() {
  finishgetdata=true;
});

}




readydb() async{
  await db.initDB();
}
// Future<void> delay() async{
//     setState(() {
//       finishgetdata=false;
//     });
//
//
//   await Future.delayed(Duration(seconds: 3));
//   setState(() {
//     finishgetdata=true;
//     print("finish get data");
// // finishgetdata=true;
//   });
//
// }
Widget buildBody(BuildContext context){

  return Stack(
    children: <Widget>[
      AnimatedOpacity(
        opacity: finishgetdata ? 1.0 : 0.0,
        duration: Duration(milliseconds: 500),
        child: buildpage(context),
      ),
      AnimatedOpacity(
        opacity: finishgetdata ? 0.0 : 1.0,
        duration: Duration(milliseconds: 500),
        child: buildLoading(context),
      ),
    ],
  );
}
Widget buildLoading(BuildContext context){
  return Align(
    child: Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      child: CircularProgressIndicator(),
    ),
    alignment: Alignment.center,
  );
}
  @override
Widget build(BuildContext context){
   return new Scaffold(
      backgroundColor: Colors.white,



      body: buildBody(context),
    );

  }

  Widget buildpage(BuildContext context) {
    final prov = Provider.of<homeprovider>(context, listen: true);

    // TODO: implement build
    return Scaffold(
            appBar: AppBar(title:Text("Ali express"),backgroundColor: Colors.red,/*actions:<Widget> [

        IconButton(icon:Icon(Icons.shopping_bag), onPressed: (){
          print("list");
        }),


      ],*/
              // leading: IconButton(icon:Icon(Icons.list),onPressed:(){
              //
              // },),

              //    elevation: 6,
            ),

            drawer: Drawer(
                child:ListView(children: [
                  UserAccountsDrawerHeader(accountName: Text(Role==null?"":Role,style: TextStyle(color: Colors.white),), accountEmail: Text(token==null?"":token),currentAccountPicture: CircleAvatar(child:Icon(Icons.person),backgroundColor: Colors.red,),decoration: BoxDecoration(color: Colors.redAccent,image: DecorationImage(image: NetworkImage("https://ahead.ie/userfiles/images/Featured_Images/LINK/link_banner.png"),fit: BoxFit.fill)),),
                  ListTile(title: Text("Home"),leading: Icon(Icons.home),subtitle: Text("lastupdate :12/3/2020"),),
                  ListTile(title: Text("Order List"),leading: Icon(Icons.shopping_bag),subtitle: Text("you have order saved"),),
                  ListTile(title: Text("Details"),leading: Icon(Icons.details),subtitle: Text("${prov.counternb} messages"),onTap: (){
                  //  Navigator.of(context).pushNamed("/details");
                    prov.addcounter();
                  },),
                  ListTile(title: Text("DetailsREP"),leading: Icon(Icons.details),subtitle: Text("${prov.counternb} messages"),onTap: (){
                   // Navigator.of(context).pushNamed("/h2o");
                    prov.addcounter();
                  },),
                  ListTile(title: Text("About"),leading: Icon(Icons.details),),
                  ListTile(title: Text("LogOut"),leading: Icon(Icons.logout),)
                ],)











            ),
        body: new RefreshIndicator(child:
      Column(children:[  SizedBox(
            height: 300.0,
            width: double.infinity,
            child: Carousel(
              boxFit: BoxFit.cover,
              autoplay: false,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 6.0,
              dotIncreasedColor: Color(0xFFFF335C),
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.topRight,
              dotVerticalPadding: 10.0,
              showIndicator: true,
              indicatorBgPadding: 7.0,
              images: [
                AssetImage("assets/images/fabric.jpg"),
                AssetImage("assets/images/images.jpeg"),
            //  ExactAssetImage("assets/images/LaunchImage.jpg"),
              ],
            ),
          ),

          FutureBuilder<List<User>>(
              future: databaseHelper.getroleandtokenuser(),

              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  // return: show loading widget
                }
                if (snapshot.hasError) {
                  // return: show error widget
                }
              List<User> user=snapshot.data!=null?snapshot.data:[];
                return  user.length>0? Row(
                  children: [

                    Text(user[0].Role),
                    Container(width: 20,),
                  Expanded(child:  Text(user[0].Token))

                  ],
                ) :CircularProgressIndicator();



              }),

    ]),
    //    ),
        //)
   onRefresh: getdatafromapi, )
    );

  }







}

