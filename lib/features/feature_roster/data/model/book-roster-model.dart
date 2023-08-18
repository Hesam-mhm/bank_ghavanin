
import '../../domain/entity/book_rooster_entity.dart';

/// responseData : {"statusCode":200,"message":"عملیات با موفقیت انجام شد.","resultData":{"pageCount":1,"pageLimit":11,"pageItems":[{"title":"مقدمه","description":"","parentId":null,"bookId":1,"id":1},{"title":"بخش اول","description":"","parentId":1,"bookId":1,"id":2},{"title":"بخش دوم","description":"","parentId":1,"bookId":1,"id":3},{"title":"جلد اول","description":"","parentId":null,"bookId":1,"id":4},{"title":"جلد دوم","description":"","parentId":null,"bookId":1,"id":5},{"title":"جلد سوم","description":"","parentId":null,"bookId":1,"id":6},{"title":"کتاب اول","description":"","parentId":4,"bookId":1,"id":7},{"title":"کتاب دوم","description":"","parentId":4,"bookId":1,"id":8},{"title":"کتاب سوم","description":"","parentId":4,"bookId":1,"id":9},{"title":"بخش اول","description":"در عمل","parentId":null,"bookId":1,"id":10},{"title":"بخش اول","description":"در اشخاص حقوقی","parentId":7,"bookId":1,"id":11}]}}

class BookRosterModel extends BookRosterEntity {
  BookRosterModel({ResponseData? responseData})
      : super(responseData: responseData);

  factory BookRosterModel.fromJson(dynamic json) {
    return BookRosterModel(
        responseData: json['responseData'] != null
            ? ResponseData.fromJson(json['responseData'])
            : null);
  }
}

/// statusCode : 200
/// message : "عملیات با موفقیت انجام شد."
/// resultData : {"pageCount":1,"pageLimit":11,"pageItems":[{"title":"مقدمه","description":"","parentId":null,"bookId":1,"id":1},{"title":"بخش اول","description":"","parentId":1,"bookId":1,"id":2},{"title":"بخش دوم","description":"","parentId":1,"bookId":1,"id":3},{"title":"جلد اول","description":"","parentId":null,"bookId":1,"id":4},{"title":"جلد دوم","description":"","parentId":null,"bookId":1,"id":5},{"title":"جلد سوم","description":"","parentId":null,"bookId":1,"id":6},{"title":"کتاب اول","description":"","parentId":4,"bookId":1,"id":7},{"title":"کتاب دوم","description":"","parentId":4,"bookId":1,"id":8},{"title":"کتاب سوم","description":"","parentId":4,"bookId":1,"id":9},{"title":"بخش اول","description":"در عمل","parentId":null,"bookId":1,"id":10},{"title":"بخش اول","description":"در اشخاص حقوقی","parentId":7,"bookId":1,"id":11}]}

class ResponseData {
  ResponseData({
    this.statusCode,
    this.message,
    this.resultData,
  });

  ResponseData.fromJson(dynamic json) {
    statusCode = json['statusCode'];
    message = json['message'];
    resultData = json['resultData'] != null
        ? ResultData.fromJson(json['resultData'])
        : null;
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
/// pageLimit : 11
/// pageItems : [{"title":"مقدمه","description":"","parentId":null,"bookId":1,"id":1},{"title":"بخش اول","description":"","parentId":1,"bookId":1,"id":2},{"title":"بخش دوم","description":"","parentId":1,"bookId":1,"id":3},{"title":"جلد اول","description":"","parentId":null,"bookId":1,"id":4},{"title":"جلد دوم","description":"","parentId":null,"bookId":1,"id":5},{"title":"جلد سوم","description":"","parentId":null,"bookId":1,"id":6},{"title":"کتاب اول","description":"","parentId":4,"bookId":1,"id":7},{"title":"کتاب دوم","description":"","parentId":4,"bookId":1,"id":8},{"title":"کتاب سوم","description":"","parentId":4,"bookId":1,"id":9},{"title":"بخش اول","description":"در عمل","parentId":null,"bookId":1,"id":10},{"title":"بخش اول","description":"در اشخاص حقوقی","parentId":7,"bookId":1,"id":11}]

class ResultData {
  ResultData({
    this.pageCount,
    this.pageLimit,
    this.pageItems,
  });

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

/// title : "مقدمه"
/// description : ""
/// parentId : null
/// bookId : 1
/// id : 1

class PageItems {
  PageItems({
    this.title,
    this.description,
    this.parentId,
    this.bookId,
    this.id,
  });

  PageItems.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    parentId = json['parentId'];
    bookId = json['bookId'];
    id = json['id'];
  }

  String? title;
  String? description;
  dynamic parentId;
  int? bookId;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    map['parentId'] = parentId;
    map['bookId'] = bookId;
    map['id'] = id;
    return map;
  }
}
