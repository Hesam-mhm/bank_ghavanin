
import '../../domain/entity/post_favorite_entity.dart';

/// responseData : {"statusCode":500,"message":"عملیات با شکست مواحه شد.","resultData":null}

class PostFavoriteModel extends PostFavoriteEntity{
  PostFavoriteModel({
      ResponseData? responseData}):super(responseData: responseData);

 factory PostFavoriteModel.fromJson(dynamic json) {
    return PostFavoriteModel(responseData: json['responseData'] != null ? ResponseData.fromJson(json['responseData']) : null);

  }


  // Map<String, dynamic> toJson() {
  //   final map = <String, dynamic>{};
  //   if (responseData != null) {
  //     map['responseData'] = responseData?.toJson();
  //   }
  //   return map;
  // }

}

/// statusCode : 500
/// message : "عملیات با شکست مواحه شد."
/// resultData : null

class ResponseData {
  ResponseData({
      this.statusCode, 
      this.message, 
      this.resultData,});

  ResponseData.fromJson(dynamic json) {
    statusCode = json['statusCode'];
    message = json['message'];
    resultData = json['resultData'];
  }
  int? statusCode;
  String? message;
  dynamic resultData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusCode'] = statusCode;
    map['message'] = message;
    map['resultData'] = resultData;
    return map;
  }

}