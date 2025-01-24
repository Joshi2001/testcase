// ignore_for_file: file_names

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:testcase/data/app_expection.dart';
import 'package:testcase/data/network/baseApiServies.dart';
import 'package:http/http.dart'as http;

class Networkapiservies extends BaseApiServier{
  @override
  Future getApiResponse(String uri) async {

    dynamic responseJson;
    try{
      final response = await http.get(Uri.parse(uri)).timeout(const Duration(seconds:10 ));
      responseJson = returnResponse(response);

    }on SocketException{
      throw FetchDataExpection("No internet connection");
    }
    return responseJson;

    
    
  }

  @override
  Future postApiResponse(String uri, data) async {
  dynamic responseJson;
    try{
      Response response = await post(Uri.parse(uri),body: data).timeout(const Duration(seconds:10 ));
      responseJson = returnResponse(response);

    }on SocketException{
      throw FetchDataExpection("No internet connection");
    }
    return responseJson;

  }
  
 dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      dynamic responseJson = jsonDecode(response.body);
        return responseJson;
         case 400:
        throw BadRequestExpection("Sonething is incorrect") ;
    default:
      throw FetchDataExpection(
          "Error occurred with status code: ${response.statusCode.toString()}");
  }
}
}