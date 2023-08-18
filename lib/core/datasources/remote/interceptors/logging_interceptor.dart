// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:get/get.dart' hide Response;
//
//
// class LoggingInterceptor extends Interceptor {
//   @override
//   void onRequest(
//       RequestOptions options, RequestInterceptorHandler handler) async {
//     if (kDebugMode) {
//       print(
//           'REQUEST ${options.method} => PATH: ${options.path} DATA: ${options.data}'
//           'HEADER ${options.headers}');
//       var js = json.encode(options.data);
//       print(options.data);
//     }
//     return super.onRequest(options, handler);
//   }
//
//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) async {
//     if (kDebugMode) {
//       response.data = json.decode(response.data);
//       print('response.data');
//       print(response.data);
//     }
//     return super.onResponse(response, handler);
//   }
//
//   @override
//   void onError(DioError err, ErrorInterceptorHandler handler) {
//     try {
//       Map<String, dynamic> json = err.response?.data;
//       if (kDebugMode) {
//         print('REMOTE ERROR: $json');
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//     if (kDebugMode) {
//       print(
//           'ERROR${err.error} => PATH: ${err.requestOptions.path} CODE: ${err.response?.statusCode}');
//     }
//     return super.onError(err, handler);
//   }
// }
