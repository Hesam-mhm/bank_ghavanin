

import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../../core/constants/constants.dart';

class TextApiProvider{
  Dio dio=Dio();
Future<dynamic> callText(int id) async {
    Response response =
        await dio.get(kBaseUrl +"/api/BookArticle/Get", 
        queryParameters: {
      "Id":id
    });
     log(response.headers.toString());
    log(response.data.toString());
    log(response.statusCode.toString());
    return response;
  }
  
}

