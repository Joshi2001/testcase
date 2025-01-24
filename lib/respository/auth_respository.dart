import 'package:testcase/data/network/baseApiServies.dart';
import 'package:testcase/data/network/networkApiServies.dart';
import 'package:testcase/res/appUrl.dart';

class AuthRespository {
  BaseApiServier apiServier = Networkapiservies();

  Future<dynamic> logInApi(dynamic data) async {
    try {
      dynamic respones =
          await apiServier.postApiResponse(AppUrl.logInUrl, data);
          return respones;
    } catch (e) {
      rethrow;
    }
  }
  
   Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic respones =
          await apiServier.postApiResponse(AppUrl.signUpUrl, data);
          return respones;
    } catch (e) {
      rethrow;
    }
  }
}
