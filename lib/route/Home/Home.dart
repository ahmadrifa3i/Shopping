import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:masterappbar/%20model/person.dart';

class HomeAliExpressState extends StatefulWidget{
//  HomeAliExpress({Key key,this.title}):super(key:key);
  @override
  HomeAliExpress createState() => HomeAliExpress();

}


class HomeAliExpress extends State<HomeAliExpressState>{

//  MyHomePage({Key key, this.title}) : super(key: key);

  String numbermessage="122";
  String title;
  int counter=0;
  Person person;
  updatenumbermessage(){
setState(() {
  counter++;
  numbermessage=counter.toString();
});

  }

  @override
  Widget build(BuildContext context) {
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
                  UserAccountsDrawerHeader(accountName: Text("person.name"), accountEmail: Text("person.mail"),currentAccountPicture: CircleAvatar(child:Icon(Icons.person),backgroundColor: Colors.red,),decoration: BoxDecoration(color: Colors.redAccent,image: DecorationImage(image: NetworkImage("https://ahead.ie/userfiles/images/Featured_Images/LINK/link_banner.png"),fit: BoxFit.fill)),),
                  ListTile(title: Text("Home"),leading: Icon(Icons.home),subtitle: Text("lastupdate :12/3/2020"),),
                  ListTile(title: Text("Order List"),leading: Icon(Icons.shopping_bag),subtitle: Text("you have order saved"),),
                  ListTile(title: Text("Sports"),leading: Icon(Icons.directions_run),subtitle: Text("${numbermessage} messages"),onTap: (){
                    updatenumbermessage();
                  },),
                  ListTile(title: Text("About"),leading: Icon(Icons.details),),
                  ListTile(title: Text("LogOut"),leading: Icon(Icons.logout),)
                ],)
            ),
        body:  SizedBox(
            height: 50.0,
            width: 50.0,
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
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                ExactAssetImage("assets/images/LaunchImage.jpg"),
              ],
            ),
          ),
    //    ),
        //)
    );

  }

  @override
  State<StatefulWidget> createState() {
    //getdata()
  numbermessage=0.toString();
person=Person("abaddalh","abdalllah@gmail");
 // getapi();
  }


}

