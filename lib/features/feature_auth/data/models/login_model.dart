import 'package:bank_ghavanin/features/feature_auth/domain/entities/login_entity.dart';

/// responseData : {"statusCode":200,"message":"عملیات با موفقیت انجام شد.","resultData":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjYiLCJuYmYiOjE2ODA2MTYwNzEsImV4cCI6MTY4MDg3NTI3MSwiaWF0IjoxNjgwNjE2MDcxfQ.JJcJdG9FFE4s5N9CViWZgWLsv9E5ezov1njPBjMUcTI","validDay":3}}

class LoginModel extends LoginEntity{
  LoginModel({
    ResponseData? responseData
    }):super(
    responseData: responseData
  );

 factory LoginModel.fromJson(dynamic json) {
   return LoginModel(
       responseData : json['responseData'] != null ? ResponseData.fromJson(json['responseData']) : null
   );
  }



}

/// statusCode : 200
/// message : "عملیات با موفقیت انجام شد."
/// resultData : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjYiLCJuYmYiOjE2ODA2MTYwNzEsImV4cCI6MTY4MDg3NTI3MSwiaWF0IjoxNjgwNjE2MDcxfQ.JJcJdG9FFE4s5N9CViWZgWLsv9E5ezov1njPBjMUcTI","validDay":3}

class ResponseData {
  ResponseData({
      this.statusCode, 
      this.message, 
      this.resultData,});

  ResponseData.fromJson(dynamic json) {
    statusCode = json['statusCode'];
    message = json['message'];
    resultData = json['resultData'] != null ? ResultData.fromJson(json['resultData']) : null;
  }
  int? statusCode;
  String? message;
  ResultData? resultData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusCode'] = statusCode;
    map['message'] = message;
    if (resultData != null) {
      map['resultData'] = resultData?.toJson();
    }
    return map;
  }

}

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjYiLCJuYmYiOjE2ODA2MTYwNzEsImV4cCI6MTY4MDg3NTI3MSwiaWF0IjoxNjgwNjE2MDcxfQ.JJcJdG9FFE4s5N9CViWZgWLsv9E5ezov1njPBjMUcTI"
/// validDay : 3

class ResultData {
  ResultData({
      this.token, 
      this.validDay,});

  ResultData.fromJson(dynamic json) {
    token = json['token'];
    validDay = json['validDay'];
  }
  String? token;
  int? validDay;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    map['validDay'] = validDay;
    return map;
  }

}