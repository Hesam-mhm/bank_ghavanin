import 'dart:developer';
import 'dart:convert';
import 'package:dio/dio.dart';
import '../../../../../core/constants/constants.dart';

class AuthApiProvider {
  Dio dio = Dio();

  Future<dynamic> callOtpCode(Map<String, dynamic> map) async {
    final body = jsonEncode(map);
    dio.options.headers['content-Type'] = 'application/json';
    Response response = await dio
        .post(kBaseUrl + "/api/User/SendOtp",
            data: body,
            options: Options(responseType: ResponseType.json, method: 'POST'))
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

  Future<dynamic> login(Map<String, dynamic> map) async {
    final body = jsonEncode(map);
    dio.options.headers['content-Type'] = 'application/json';
    Response response = await dio
        .post(
      kBaseUrl + "/api/User/Login",
      data: body,
    )
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
