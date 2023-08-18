

import '../../domain/entity/roster_entity.dart';

/// responseData : {"statusCode":200,"message":"عملیات با موفقیت انجام شد.","resultData":{"pageCount":1,"pageLimit":1,"pageItems":[{"title":"حقوق مدنی","passageDate":"1401/10/11","approvalAuthority":"مجلس شوراي ملي","notificationNumber":"ندارد","notificationDate":"1401/10/11","notificationAuthority":"نخست وزير","implementationDate":"1401/10/11","officialGazetteNo":"ندارد","officialGazetteDate":"1401/10/11","id":1}]}}

class RosterModel extends RosterEntity{
  RosterModel({
      ResponseData? responseData}):super(responseData:responseData);

 factory RosterModel.fromJson(dynamic json) {
    
    return RosterModel(responseData: json['responseData'] != null ? ResponseData.fromJson(json['responseData']) : null);
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
/// resultData : {"pageCount":1,"pageLimit":1,"pageItems":[{"title":"حقوق مدنی","passageDate":"1401/10/11","approvalAuthority":"مجلس شوراي ملي","notificationNumber":"ندارد","notificationDate":"1401/10/11","notificationAuthority":"نخست وزير","implementationDate":"1401/10/11","officialGazetteNo":"ندارد","officialGazetteDate":"1401/10/11","id":1}]}

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
/// pageLimit : 1
/// pageItems : [{"title":"حقوق مدنی","passageDate":"1401/10/11","approvalAuthority":"مجلس شوراي ملي","notificationNumber":"ندارد","notificationDate":"1401/10/11","notificationAuthority":"نخست وزير","implementationDate":"1401/10/11","officialGazetteNo":"ندارد","officialGazetteDate":"1401/10/11","id":1}]

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

/// title : "حقوق مدنی"
/// passageDate : "1401/10/11"
/// approvalAuthority : "مجلس شوراي ملي"
/// notificationNumber : "ندارد"
/// notificationDate : "1401/10/11"
/// notificationAuthority : "نخست وزير"
/// implementationDate : "1401/10/11"
/// officialGazetteNo : "ندارد"
/// officialGazetteDate : "1401/10/11"
/// id : 1

class PageItems {
  PageItems({
      this.title, 
      this.passageDate, 
      this.approvalAuthority, 
      this.notificationNumber, 
      this.notificationDate, 
      this.notificationAuthority, 
      this.implementationDate, 
      this.officialGazetteNo, 
      this.officialGazetteDate, 
      this.id,});

  PageItems.fromJson(dynamic json) {
    title = json['title'];
    passageDate = json['passageDate'];
    approvalAuthority = json['approvalAuthority'];
    notificationNumber = json['notificationNumber'];
    notificationDate = json['notificationDate'];
    notificationAuthority = json['notificationAuthority'];
    implementationDate = json['implementationDate'];
    officialGazetteNo = json['officialGazetteNo'];
    officialGazetteDate = json['officialGazetteDate'];
    id = json['id'];
  }
  String? title;
  String? passageDate;
  String? approvalAuthority;
  String? notificationNumber;
  String? notificationDate;
  String? notificationAuthority;
  String? implementationDate;
  String? officialGazetteNo;
  String? officialGazetteDate;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['passageDate'] = passageDate;
    map['approvalAuthority'] = approvalAuthority;
    map['notificationNumber'] = notificationNumber;
    map['notificationDate'] = notificationDate;
    map['notificationAuthority'] = notificationAuthority;
    map['implementationDate'] = implementationDate;
    map['officialGazetteNo'] = officialGazetteNo;
    map['officialGazetteDate'] = officialGazetteDate;
    map['id'] = id;
    return map;
  }

}