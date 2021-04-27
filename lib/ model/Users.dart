import 'package:masterappbar/%20model/person.dart';
import 'package:masterappbar/database/AliExpressTable.dart';
import 'package:masterappbar/database/database.dart';
import 'package:sqflite/sqflite.dart';

class Users {
  int userId;
  int id;
  String title;
  bool completed;

  Users({this.userId, this.id, this.title, this.completed});
  Users.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  static Users fromMap(Map<String, dynamic> json) {
    Users u=Users(
         userId: json["userId"],
        id:json["id"],
      title: json["title"],
      completed: json["completed"]==0?true:false
    );
    return u;


  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }
  static insertUser(Users user) async {
    var dbStore = ALiExpressStore();
    Database db = await dbStore.database;
    try {
      var query = db.rawQuery(
          "INSERT OR REPLACE INTO USERS"
              "("
             "${aliexpresstable.kId},"
             "${aliexpresstable.kUserId},"
             "${aliexpresstable.kTitle},"
             "${aliexpresstable.kCompleted}"
              ")"
              "VALUES"
              "("
              "?,"
              "?,"
              "?,"
              "?)",
          [
            //  user.id,
            user.id,
            user.userId,
            user.title,
            user.completed?1:0
          ]);
      return query;
    } catch (e) {
      print("exception from database : $e");
    }
  }
}

