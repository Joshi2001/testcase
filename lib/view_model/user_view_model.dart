import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testcase/model/user_model.dart';

class UserViewModel with ChangeNotifier {

  Future<bool> saveUser(UserModel user) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString("token", user.token.toString());
    return true;
  }

  Future<UserModel> getUser() async {
    
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final String? token = sharedPreferences.getString('token');
    return UserModel(token: token.toString());
  }

  void remove() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.remove('token');
  }
}
