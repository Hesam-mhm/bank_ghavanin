// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'remote_service.dart';
//
// // **************************************************************************
// // RetrofitGenerator
// // **************************************************************************
//
// // ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers
//
// class _RemoteService implements RemoteService {
//   _RemoteService(this._dio, {this.baseUrl}) {
//     baseUrl ??= kBaseUrl;
//   }
//
//   final Dio _dio;
//
//   String? baseUrl;
//
//   @override
//   Future<HttpResponse<SplashDto>> appVersion({required splashParam}) async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     _data.addAll(splashParam.toJson());
//     final _result = await _dio.fetch<Map<String, dynamic>>(
//         _setStreamType<HttpResponse<SplashDto>>(
//             Options(method: 'POST', headers: _headers, extra: _extra)
//                 .compose(_dio.options, 'api/User/SendOtp',
//                     queryParameters: queryParameters, data: _data)
//                 .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = SplashDto.fromJson(_result.data!);
//     final httpResponse = HttpResponse(value, _result);
//     return httpResponse;
//   }
//
//   @override
//   Future<HttpResponse<LoginDto>> config({required LoginParam loginParam}) async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     _data.addAll(loginParam.toJson());
//     final _result = await _dio.fetch<Map<String, dynamic>>(
//         _setStreamType<HttpResponse<LoginDto>>(
//             Options(method: 'POST', headers: _headers, extra: _extra)
//                 .compose(_dio.options, 'proxy/app_request_config',
//                 queryParameters: queryParameters, data: _data)
//                 .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = LoginDto.fromJson(_result.data!);
//     final httpResponse = HttpResponse(value, _result);
//     return httpResponse;
//   }
//
//   RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
//     if (T != dynamic &&
//         !(requestOptions.responseType == ResponseType.bytes ||
//             requestOptions.responseType == ResponseType.stream)) {
//       if (T == String) {
//         requestOptions.responseType = ResponseType.plain;
//       } else {
//         requestOptions.responseType = ResponseType.json;
//       }
//     }
//     return requestOptions;
//   }
// }