import 'package:bank_ghavanin/features/feature_home/domain/entities/home_entity.dart';

/// responseData : {"statusCode":200,"message":"عملیات با موفقیت انجام شد.","resultData":{"pageCount":1,"pageLimit":10,"pageItems":[{"title":"حقوقی","subTitle":"قوانین و مقررات","backgroundColor":"CFDFFF","color":"738EC5","showList":false,"id":1},{"title":"آرای وحدت رویه","subTitle":"0","backgroundColor":"C2F5E9","color":"3FB69A","showList":true,"id":9},{"title":"نظریات مشورتی","subTitle":"0","backgroundColor":"CFDFFF","color":"738EC5","showList":true,"id":10},{"title":"کیفری","subTitle":"قوانین و مقررات","backgroundColor":"4DAA63","color":"DCFEE4","showList":false,"id":2},{"title":"اداری","subTitle":"قوانین و مقررات","backgroundColor":"FFDED1","color":"EE8F6A","showList":false,"id":3},{"title":"مالی و اقتصادی","subTitle":"قوانین و مقررات","backgroundColor":"FFEAB6","color":"FF9F5A","showList":false,"id":4},{"title":"اساسی اجتماعی","subTitle":"قوانین و مقررات","backgroundColor":"EDE2FE","color":"9A75D4","showList":false,"id":5},{"title":"فرهنگی","subTitle":"قوانین و مقررات","backgroundColor":"EDD4CE","color":"C58170","showList":false,"id":6},{"title":"آزمون کانون وکلا","subTitle":"قوانین و مقررات","backgroundColor":"EEEEEE","color":"92929","showList":false,"id":7},{"title":"آزمون مرکز وکلا","subTitle":"قوانین و مقررات","backgroundColor":"FFDCE5","color":"D86B87","showList":false,"id":8}]}}

class HomeModel extends HomeEntity {
  HomeModel({
    ResponseData? responseData
  }):super(
    responseData : responseData
  );

 factory HomeModel.fromJson(dynamic json) {
   return HomeModel(
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
/// resultData : {"pageCount":1,"pageLimit":10,"pageItems":[{"title":"حقوقی","subTitle":"قوانین و مقررات","backgroundColor":"CFDFFF","color":"738EC5","showList":false,"id":1},{"title":"آرای وحدت رویه","subTitle":"0","backgroundColor":"C2F5E9","color":"3FB69A","showList":true,"id":9},{"title":"نظریات مشورتی","subTitle":"0","backgroundColor":"CFDFFF","color":"738EC5","showList":true,"id":10},{"title":"کیفری","subTitle":"قوانین و مقررات","backgroundColor":"4DAA63","color":"DCFEE4","showList":false,"id":2},{"title":"اداری","subTitle":"قوانین و مقررات","backgroundColor":"FFDED1","color":"EE8F6A","showList":false,"id":3},{"title":"مالی و اقتصادی","subTitle":"قوانین و مقررات","backgroundColor":"FFEAB6","color":"FF9F5A","showList":false,"id":4},{"title":"اساسی اجتماعی","subTitle":"قوانین و مقررات","backgroundColor":"EDE2FE","color":"9A75D4","showList":false,"id":5},{"title":"فرهنگی","subTitle":"قوانین و مقررات","backgroundColor":"EDD4CE","color":"C58170","showList":false,"id":6},{"title":"آزمون کانون وکلا","subTitle":"قوانین و مقررات","backgroundColor":"EEEEEE","color":"92929","showList":false,"id":7},{"title":"آزمون مرکز وکلا","subTitle":"قوانین و مقررات","backgroundColor":"FFDCE5","color":"D86B87","showList":false,"id":8}]}

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
/// pageLimit : 10
/// pageItems : [{"title":"حقوقی","subTitle":"قوانین و مقررات","backgroundColor":"CFDFFF","color":"738EC5","showList":false,"id":1},{"title":"آرای وحدت رویه","subTitle":"0","backgroundColor":"C2F5E9","color":"3FB69A","showList":true,"id":9},{"title":"نظریات مشورتی","subTitle":"0","backgroundColor":"CFDFFF","color":"738EC5","showList":true,"id":10},{"title":"کیفری","subTitle":"قوانین و مقررات","backgroundColor":"4DAA63","color":"DCFEE4","showList":false,"id":2},{"title":"اداری","subTitle":"قوانین و مقررات","backgroundColor":"FFDED1","color":"EE8F6A","showList":false,"id":3},{"title":"مالی و اقتصادی","subTitle":"قوانین و مقررات","backgroundColor":"FFEAB6","color":"FF9F5A","showList":false,"id":4},{"title":"اساسی اجتماعی","subTitle":"قوانین و مقررات","backgroundColor":"EDE2FE","color":"9A75D4","showList":false,"id":5},{"title":"فرهنگی","subTitle":"قوانین و مقررات","backgroundColor":"EDD4CE","color":"C58170","showList":false,"id":6},{"title":"آزمون کانون وکلا","subTitle":"قوانین و مقررات","backgroundColor":"EEEEEE","color":"92929","showList":false,"id":7},{"title":"آزمون مرکز وکلا","subTitle":"قوانین و مقررات","backgroundColor":"FFDCE5","color":"D86B87","showList":false,"id":8}]

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

/// title : "حقوقی"
/// subTitle : "قوانین و مقررات"
/// backgroundColor : "CFDFFF"
/// color : "738EC5"
/// showList : false
/// id : 1

class PageItems {
  PageItems({
      this.title, 
      this.subTitle, 
      this.backgroundColor, 
      this.color, 
      this.showList, 
      this.id,});

  PageItems.fromJson(dynamic json) {
    title = json['title'];
    subTitle = json['subTitle'];
    backgroundColor = json['backgroundColor'];
    color = json['color'];
    showList = json['showList'];
    id = json['id'];
  }
  String? title;
  String? subTitle;
  String? backgroundColor;
  String? color;
  bool? showList;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['subTitle'] = subTitle;
    map['backgroundColor'] = backgroundColor;
    map['color'] = color;
    map['showList'] = showList;
    map['id'] = id;
    return map;
  }

}