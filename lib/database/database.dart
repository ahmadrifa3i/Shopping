
import 'dart:io';

import 'package:masterappbar/%20model/person.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import'package:sqflite/sqflite.dart';

import 'AliExpressTable.dart';


class ALiExpressStore{

Database db;


Future<Database> get database async{
  if(db!=null){
    return db;
  }
  db=await initDB();
  return db;
}
initDB()async{
  Database db=await openDatabase(
    await dbPath(),
    version:5,
    onCreate: createdb,
    onUpgrade: updatedb);
  return db;

}
 static Future<String> dbPath()async{
  Directory d=await getApplicationDocumentsDirectory();

String path=join(d.path,"aliexpress.db");
print("path database:");
print(path);
return path;
}
void createdb(Database db,int version) async
{
db.execute(queryaliuser);
db.execute(queryaliuserRoleOrToken);

}
updatedb(Database db,int oldVersion,int newversion) async{

  //
  // await db.execute("ALTER TABLE IF EXISTS USER ADD COLUMN Role TEXT");
  // await db.execute("ALTER TABLE IF EXISTS USER ADD COLUMN Token TEXT");
  //
  //
  createdb(db, newversion);
}
 Future<List<User>> getroleandtokenuser()async{
 Database db=await this.database;

 try{
   var query=await db.rawQuery("SELECT * FROM USERROLE");

   List<Map> result=query;
   List<User> listofalluser=[];
   for(var user in result){
print("from for");
     User u=User.fromJsonToMap(user);
     listofalluser.add(u);
   }
   print("database get list done");
   return listofalluser;




 }catch(e){

 }
}
}



