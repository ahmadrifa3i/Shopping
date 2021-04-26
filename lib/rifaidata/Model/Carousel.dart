// Image :"string"
// Name :"String"
// Description :"String"
//Date :"String"
// Id



/*
json
hotel
 100

 room 0 // kamal wi adbalah
 room 1 // hanan
 room2 // ali wu khalil
 room 19 // samira wu belle
 room 99 // ahmad

 zbun
 call room 3?
 call room 0
 abbadla wu kamal

 roomk2 ali wu khalil

 json
 {

 "   room 0   ":abdallah wu kamal
 "   room 1   ": kamal hanan
 "   room 2   ": kamal ali
 "   room 3   ":ahmadl

 }
 print(json["room0"]) /// abdallah wu kamal
 print(json["room 3"]) /// ahmadl


 example:

 {
    "statusCode": 200,
    "message": "Success",
    "content": {
        "Token": "IdCNXEBq-3_JnQo15wqrPRs7IDHWqNIS8uMX_F7qsQwM-RR8k9n6l-Te6xkMCOQE9_eh7r9WA938RK1w5m02RHj_x78p70poBRWYCkO3m0NHDfar-1VZL8AxRFrWTA1kNQnguN2PETwBMA0whhdmQWpoBiX7adLy-_9EIKcm5Bw2O5jDWwzZN_4ps93-yUa5pYJP6EfShZIEGmZQgkkCMeM2ga427kf3BCgRqWJRWQEUvyQSFnR64yM2FpqJ5WaJFwMRZCMgieLFJkGygTWJkS2dnbGsB_r6rMrBm2GQn7M",
        "Role": "Advertiser"
    }
}
response=json.decoded


if(response["message"]=="Success")

Navigator.of(context).pushreplacemnetNamed("/Home);
else
alert.buildr(
"Invalid username or password"
r

user
{

"Name": "ahmad",
"Mail":"rifai@gmail.com",
"Number":"70239872",
}
http.post(")


response =json.decoded

String a=response["Name"];
print(a);//ahmad
class User{
String name;
String mail;


 User(this.name,this.mail);

 public User fromjsomtoclass(Json){

 User user=new user(
 name:json["Name"],
 mail:json["Mail"],
)
return user;
 */





class Users{

 String name;
 String mail;

 Users({this.name, this.mail});

 //Name:"rifai"

static Users fromjson(Map<String, dynamic> json){
 Users ahmad=new Users(

   name:json["Name"]==null?"null":json["Name"],
   mail:json["Mail"]==null?"null":json["Mail"]

 );
 return ahmad;

 }

}



