// import 'package:dio/dio.dart';
// import '../../../constants/constants.dart';
// import '../interceptors/authentication_interceptor.dart';
// import '../interceptors/logging_interceptor.dart';
// import '../remote_service.dart';
//
//
// class DioProvider {
//   late Dio dio;
//   late RemoteService remoteService;
//   static final DioProvider _instance = DioProvider._internal();
//
//   factory DioProvider() => _instance;
//
//   DioProvider._internal() {
//     dio = Dio(BaseOptions(connectTimeout: kConnectTimeout, receiveTimeout: kReceiveTimeout))
//       ..interceptors
//           .addAll([LoggingInterceptor(), AuthenticationInterceptor()]);
//     remoteService = RemoteService(dio);
//   }
// }
