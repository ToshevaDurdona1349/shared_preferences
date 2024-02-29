import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
// obyekt
class User{
  int? id;
  String? username;

  User({ this.id,this.username,});

  User.fromMap(Map<String,dynamic>json)
  :id=json["id"],
  username =json['username'];
  // obyekt ni mepga o'tkazish
  // obyekt json ,json degani mep degani uni stringga o'tkazamiz
  Map<String,dynamic> toMap()=>{
    'id':id,
    'username':username
  };
}