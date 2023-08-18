import '../../domain/entities/otp_entity.dart';

/// responseData : {"statusCode":200,"message":"عملیات با موفقیت انجام شد.","resultData":null}

class OtpModel extends OtpEntity{
  OtpModel({
  ResponseData? responseData
  }):super(
    responseData : responseData ,
  );

factory  OtpModel.fromJson(dynamic json) {
  return  OtpModel(
      responseData : json['responseData'] != null ? ResponseData.fromJson(json['responseData']) : null
  );


  }



}

/// statusCode : 200
/// message : "عملیات با موفقیت انجام شد."
/// resultData : null

class ResponseData {
  int? statusCode;
  String? message;
  dynamic resultData;

  ResponseData({
      this.statusCode, 
      this.message, 
      this.resultData,});

  ResponseData.fromJson(dynamic json) {
    statusCode = json['statusCode'];
    message = json['message'];
    resultData = json['resultData'] ;
  }



}