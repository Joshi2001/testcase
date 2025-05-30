// ignore_for_file: use_build_context_synchronously

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testcase/model/user_model.dart';
import 'package:testcase/view/auth/login.dart';
import 'package:testcase/view/bottomnavigation2.dart';
import 'package:testcase/view_model/user_view_model.dart';

class SplashViewModel  {

  Future<UserModel> getUserData() => UserViewModel().getUser();
  
  void checkAuth(BuildContext context) async{
    getUserData().then((value) async{
     
      if(value.token.toString() == "null" || value.token.toString() == ""){
      if(kDebugMode){
        print("Error1 :  ${value.token}");
      }
      await Future.delayed(const Duration(seconds: 3));
       Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const LogIn())) ;  
      }else {
         if(kDebugMode){
        print("Error2 :  ${value.token}");
      }
       await Future.delayed(const Duration(seconds: 3));
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Bottomnavigation2())) ;
      }
    }).onError((error, stackTrace) {
      if(kDebugMode){
        print(error);
      }
    },);
  }

}