// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names, use_build_context_synchronously

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testcase/model/user_model.dart';
import 'package:testcase/respository/auth_respository.dart';
import 'package:testcase/Custom/showtoast.dart';
import 'package:testcase/view/bottomnavigation2.dart';
import 'package:testcase/view_model/user_view_model.dart';

class AuthViewModel with ChangeNotifier {
  final _myrepo = AuthRespository();

  Future<void> loginApi(dynamic data, BuildContext context) async {
    _myrepo.logInApi(data).then((onValue) {
      final user = UserModel.fromJson(onValue);
      final userPreferences =
          Provider.of<UserViewModel>(context, listen: false);

      userPreferences.saveUser(user);
      showToast("Login Successfully");

      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Bottomnavigation2()));
    }).onError((error, StackTrace) {
      showToast(error.toString());
      if (kDebugMode) {
        print(error);
      }
    });
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    _myrepo.signUpApi(data).then((onValue) {
      final user = UserModel.fromJson(onValue);
      final userPreferences =
          Provider.of<UserViewModel>(context, listen: false);
    
      // UserModel(token: onValue['token']);
       userPreferences.saveUser(user);
      showToast("Signup Successfully");

      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Bottomnavigation2()));
    }).onError((error, StackTrace) {
      showToast(error.toString());
      if (kDebugMode) {
        print("error $error");
      }
    });
  }
}
