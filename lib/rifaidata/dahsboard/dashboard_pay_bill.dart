import 'package:flutter/material.dart';
import 'package:masterappbar/rifaidata/data/img.dart';
import 'package:masterappbar/rifaidata/data/my_colors.dart';
import 'package:masterappbar/rifaidata/widget/my_text.dart';


class DashboardPayBillRoute extends StatefulWidget {

  DashboardPayBillRoute();

  @override
  DashboardPayBillRouteState createState() => new DashboardPayBillRouteState();
}


class DashboardPayBillRouteState extends State<DashboardPayBillRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.blueAccent,
          title: Text("Payer", style: MyText.title(context).copyWith(color: Colors.white,)),
          // leading: IconButton(
          //           //   icon: Icon(Icons.menu, color: Colors.indigo[500]),
          //           //   onPressed: () {
          //           //     //Navigator      //page 0 page 1 page 2 page4 //onbackpressed
          //           //   Navigator.pop(context);
          //           // },
          //           // ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.indigo[500]),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.indigo[500]),
              onPressed: () {},
            ),
          ]
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 190,
                child: Stack(
                  children: <Widget>[
                    Image.asset(Img.get('material_bg_1.png'),
                      width: double.infinity, height: double.infinity, fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 14),
                      child: CircleAvatar(
                        radius: 36,
                        backgroundColor: Colors.grey[100],
                        child: CircleAvatar(
                          radius: 33,
                          backgroundImage: AssetImage(Img.get("photo_male_6.jpg")),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("John Miller", style: MyText.body2(context).copyWith(
                                color: Colors.grey[100], fontWeight: FontWeight.bold
                            )),
                            Container(height: 5),
                            Text("johnmiller@mail.com", style: MyText.body2(context).copyWith(
                                color: Colors.grey[100]
                            ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text("Home", style: MyText.subhead(context).copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.home, size: 25.0, color: Colors.grey) ,
                onTap: (){},
              ),
              ListTile(
                title: Text("Trending", style: MyText.subhead(context).copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.whatshot, size: 25.0, color: Colors.grey) ,
                onTap: (){},
              ),
              ListTile(
                title: Text("Latest", style: MyText.subhead(context).copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.access_time, size: 25.0, color: Colors.grey) ,
                onTap: (){},
              ),
              ListTile(
                title: Text("Highlight", style: MyText.subhead(context).copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.highlight, size: 25.0, color: Colors.grey) ,
                onTap: (){},
              ),
              Divider(),
              ListTile(
                title: Text("Settings", style: MyText.subhead(context).copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.settings, size: 25.0, color: Colors.grey) ,
                onTap: (){},
              ),
              ListTile(
                title: Text("Help", style: MyText.subhead(context).copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500
                )),
                leading: Icon(Icons.help_outline, size: 25.0, color: Colors.grey) ,
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
Container(height: 30,),
        // SizedBox(height: 30,),
            Text("Categories", style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
           Container(height: 20),
            Row(
              children: <Widget>[

                Container(width: 15),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width:double.infinity,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                       //   Icon(Icons.home, size: 35, color: Colors.indigo[500]),
                          Image.asset(Img.get("image_1.jpg")),
                        //  Container(height: 18),
                         //
                         Text("HOME", style: MyText.body1(context).copyWith(color: MyColors.grey_90)),
                        ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.invert_colors, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("WATER", style: MyText.body1(context).copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.phone_android, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("MOBILE", style: MyText.body1(context).copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 15),
              ],
            ),
            Container(height: 6),
            Row(
              children: <Widget>[
                Container(width: 15),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.phone, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("LANDLINE", style: MyText.body1(context).copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.live_tv, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("TV CABLE", style: MyText.body1(context).copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.public, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("INTERNET", style: MyText.body1(context).copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 15),
              ],
            ),
            Container(height: 30),
            Text("Purchase Tickets", style: MyText.medium(context).copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
            Container(height: 10),
            Row(
              children: <Widget>[
                Container(width: 15),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.local_movies, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("MOVIE", style: MyText.body1(context).copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.event, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("EVENT", style: MyText.body1(context).copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 6),
                Expanded(
                  child: Container( padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.grey_5,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.directions_bike, size: 35, color: Colors.indigo[500]),
                        Container(height: 18),
                        Text("SPORT", style: MyText.body1(context).copyWith(color: MyColors.grey_90)),
                      ],
                    ),
                  ),
                ),
                Container(width: 15),
              ],
            ),
            Container(height: 6),
          ],
        ),
      ),
    );
  }
}

