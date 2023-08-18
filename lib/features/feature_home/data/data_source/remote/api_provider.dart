import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../../../core/constants/constants.dart';

class HomeApiProvider {
  Dio dio = Dio();
  Future<dynamic> callHomeCategory() async {
    dio.options.headers['content-Type'] = 'application/json';
    Response response = await dio
        .get(kBaseUrl + "/api/Category/GetAll",
        queryParameters: {
        'PageId' : '',
          'PageLimit' : ''
        },
        options: Options(responseType: ResponseType.json, method: 'GET'))
        .then((value) {
      log(value.headers.toString());
      log(value.data.toString());
      log(value.statusCode.toString());
      return value;
    }).catchError((err) {
      if (err is DioError) {
        return err.response!;
      }
      return err.response;
    });
    return response;
  }





}