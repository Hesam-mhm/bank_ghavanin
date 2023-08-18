import 'package:bank_ghavanin/features/feature_roster/domain/entity/mavad_list_chapter_entity.dart';

/// responseData : {"statusCode":200,"message":"عملیات با موفقیت انجام شد.","resultData":{"pageCount":1,"pageLimit":2,"pageItems":[{"rosterId":2,"title":"ماده1","code":0,"id":1},{"rosterId":2,"title":"ماده 1","code":0,"id":2}]}}

class MavadListChapterModel  extends MavadListChapterEntity{
  MavadListChapterModel({
    ResponseData? responseData
  }):super(
    responseData: responseData
  );

  factory MavadListChapterModel.fromJson(dynamic json) {
   return MavadListChapterModel(
        responseData : json['responseData'] != null ? ResponseData.fromJson(json['responseData']) : null

    );

  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (responseData != null) {
      map['responseData'] = responseData?.toJson();
    }
    return map;
  }

}

/// statusCode : 200
/// message : "عملیات با موفقیت انجام شد."
/// resultData : {"pageCount":1,"pageLimit":2,"pageItems":[{"rosterId":2,"title":"ماده1","code":0,"id":1},{"rosterId":2,"title":"ماده 1","code":0,"id":2}]}

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

/// pageCount : 1
/// pageLimit : 2
/// pageItems : [{"rosterId":2,"title":"ماده1","code":0,"id":1},{"rosterId":2,"title":"ماده 1","code":0,"id":2}]

class ResultData {
  ResultData({
      this.pageCount, 
      this.pageLimit, 
      this.pageItems,});

  ResultData.fromJson(dynamic json) {
    pageCount = json['pageCount'];
    pageLimit = json['pageLimit'];
    if (json['pageItems'] != null) {
      pageItems = [];
      json['pageItems'].forEach((v) {
        pageItems?.add(PageItems.fromJson(v));
      });
    }
  }
  int? pageCount;
  int? pageLimit;
  List<PageItems>? pageItems;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pageCount'] = pageCount;
    map['pageLimit'] = pageLimit;
    if (pageItems != null) {
      map['pageItems'] = pageItems?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// rosterId : 2
/// title : "ماده1"
/// code : 0
/// id : 1

class PageItems {
  PageItems({
      this.rosterId, 
      this.title, 
      this.code, 
      this.id,});

  PageItems.fromJson(dynamic json) {
    rosterId = json['rosterId'];
    title = json['title'];
    code = json['code'];
    id = json['id'];
  }
  int? rosterId;
  String? title;
  int? code;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rosterId'] = rosterId;
    map['title'] = title;
    map['code'] = code;
    map['id'] = id;
    return map;
  }

}