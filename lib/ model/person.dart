import 'package:masterappbar/database/AliExpressTable.dart';
import 'package:masterappbar/database/database.dart';
import 'package:sqflite/sqflite.dart';

class User {
  // int id;
  String Role; //Aa
  String Token; //Aa

  User({this.Role, this.Token});

  User.fromJson(Map<String, dynamic> json) {
    // id = json['Id']; //1
    Role = json['Role']; //ahmad
    Token = json['Token'];
  }
 static User fromJsonToMap(Map <String,dynamic> json){
    User u=User(
      Role: json['Role'],
      Token: json['Token']
    );
    return u;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data['Id'] = this.id;
    data['Role'] = this.Role;
    data['Token'] = this.Token;
    return data;
  }

  static insertUser(User user) async {
    var dbStore = ALiExpressStore();
    Database db = await dbStore.database;
    try {
      var query = db.rawQuery(
          "INSERT OR REPLACE INTO USERROLE "
          "("
          "${aliexpresstable.kRole},"
          "${aliexpresstable.kToken}"
          ")"
          "VALUES"
          "("
          "?,"
          "?)",
          [
            //  user.id,
            user.Role,
            user.Token
          ]);
      return query;
    } catch (e) {
      print("exception from database : $e");
    }
  }
}
