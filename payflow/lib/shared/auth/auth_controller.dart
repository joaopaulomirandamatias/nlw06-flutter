import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payflow/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel _user;

  UserModel get user => _user;

  UserModel setUser(BuildContext context, UserModel user) {
    if (user != null) {
      saveUser(user);
      _user = user;
      Navigator.pushReplacementNamed(
          context, "/home");
    } else {
      Navigator.pushReplacementNamed(
          context, "/login");
    }
  }

  Future<void> saveUser(UserModel user) async{
    final instance = await SharedPreferences.getInstance();
    instance.setString("user", user.toJson());
    return;
  }

  Future<void> currentUser(BuildContext context) async{
    final instance = await SharedPreferences.getInstance();
    if(instance.containsKey("user")){
      final json = instance.get("user") as String;
      setUser(context, UserModel.fromJson(json));
      return;
    } else{
      setUser(context, null);
    }
  }
}






