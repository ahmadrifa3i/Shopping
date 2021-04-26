import 'package:flutter/material.dart';

class aliexpresstable{


  static const kId="Id";
  static const kName="Name";//aA
  static const kMail="Mail";
  static const kRole="Role";
  static const kToken="Token";

  // int integer
  //string text
//bool  1 0



}

String queryaliuserRoleOrToken="CREATE TABLE IF NOT EXISTS USERROLE( "

    "${aliexpresstable.kId} INTEGER PRIMARY KEY AUTOINCREMENT,"

    "${aliexpresstable.kRole} TEXT,"

    "${aliexpresstable.kToken} TEXT)";
// ")";

String queryaliuser="CREATE TABLE IF NOT EXISTS USER( "

    "${aliexpresstable.kId} INTEGER PRIMARY KEY AUTOINCREMENT,"

    "${aliexpresstable.kName} TEXT,"

    "${aliexpresstable.kMail} TEXT)";

// ")";