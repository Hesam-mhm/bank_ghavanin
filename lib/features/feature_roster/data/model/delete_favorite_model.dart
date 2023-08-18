

import '../../domain/entity/delete_favorite_entity.dart';

/// responseData : {"statusCode":200,"message":"عملیات با موفقیت انجام شد.","resultData":{"id":[2]}}

class DeleteFavoriteModel extends DeleteFavoriteEntity{
  DeleteFavoriteModel({
       ResponseData? responseData
}):super(responseData:responseData);

 factory DeleteFavoriteModel.fromJson(dynamic json) {

  return DeleteFavoriteModel(responseData: json['responseData'] != null ? ResponseData.fromJson(json['responseData']) : null);
  }

  // Map<String, dynamic> toJson() {
  //   final map = <String, dynamic>{};
  //   if (responseData != null) {
  //     map['responseData'] = responseData?.toJson();
  //   }
  //   return map;
  // }

}

/// statusCode : 200
/// message : "عملیات با موفقیت انجام شد."
/// resultData : {"id":[2]}

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

/// id : [2]

class ResultData {
  ResultData({
      this.id,});

  ResultData.fromJson(dynamic json) {
    id = json['id'] != null ? json['id'].cast<int>() : [];
  }
  List<int>? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

}