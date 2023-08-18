import 'package:bank_ghavanin/features/feature_text/domain/entity/text_entity.dart';

/// responseData : {"statusCode":200,"message":"عملیات با موفقیت انجام شد.","resultData":{"title":"ماده1","code":0,"description":"ماده ۱ قانون مدنی: اصلاحی ۱۳۷۰/۸/۱۴  مصوبات مجلس شورای اسلامی و نتیجهٔ همه‌پرسی پس از طی مراحل قانونی به رئیس‌ جمهور ابلاغ می‌شود. رئیس‌جمهور باید ظرف مدت پنج روز آن را امضا و به مجریان ابلاغ نماید و دستور انتشار آن را صادر کند و روزنامهٔ رسمی موظف است ظرف مدت ۷۲ ساعت پس از ابلاغ، منتشر نماید.","amendments":[],"votes":[],"note":{"description":"string","id":1},"id":1}}

class TextModel extends TextEntity{
  TextModel({
      ResponseData? responseData
}):super(responseData:responseData);

 factory TextModel.fromJson(dynamic json) {
return TextModel(
      responseData : json['responseData'] != null ? ResponseData.fromJson(json['responseData']) : null

);

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
/// resultData : {"title":"ماده1","code":0,"description":"ماده ۱ قانون مدنی: اصلاحی ۱۳۷۰/۸/۱۴  مصوبات مجلس شورای اسلامی و نتیجهٔ همه‌پرسی پس از طی مراحل قانونی به رئیس‌ جمهور ابلاغ می‌شود. رئیس‌جمهور باید ظرف مدت پنج روز آن را امضا و به مجریان ابلاغ نماید و دستور انتشار آن را صادر کند و روزنامهٔ رسمی موظف است ظرف مدت ۷۲ ساعت پس از ابلاغ، منتشر نماید.","amendments":[],"votes":[],"note":{"description":"string","id":1},"id":1}

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

/// title : "ماده1"
/// code : 0
/// description : "ماده ۱ قانون مدنی: اصلاحی ۱۳۷۰/۸/۱۴  مصوبات مجلس شورای اسلامی و نتیجهٔ همه‌پرسی پس از طی مراحل قانونی به رئیس‌ جمهور ابلاغ می‌شود. رئیس‌جمهور باید ظرف مدت پنج روز آن را امضا و به مجریان ابلاغ نماید و دستور انتشار آن را صادر کند و روزنامهٔ رسمی موظف است ظرف مدت ۷۲ ساعت پس از ابلاغ، منتشر نماید."
/// amendments : []
/// votes : []
/// note : {"description":"string","id":1}
/// id : 1

class ResultData {
  ResultData({
      this.title, 
      this.code, 
      this.description, 
      this.amendments, 
      this.votes, 
      this.note, 
      this.id,});

  ResultData.fromJson(dynamic json) {
    title = json['title'];
    code = json['code'];
    description = json['description'];
    if (json['amendments'] != null) {
      amendments = [];
      json['amendments'].forEach((v) {
        amendments?.add(v);
      });
    }
    if (json['votes'] != null) {
      votes = [];
      json['votes'].forEach((v) {
        votes?.add(v);
      });
    }
    note = json['note'] != null ? Note.fromJson(json['note']) : null;
    id = json['id'];
  }
  String? title;
  int? code;
  String? description;
  List<dynamic>? amendments;
  List<dynamic>? votes;
  Note? note;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['code'] = code;
    map['description'] = description;
    if (amendments != null) {
      map['amendments'] = amendments?.map((v) => v.toJson()).toList();
    }
    if (votes != null) {
      map['votes'] = votes?.map((v) => v.toJson()).toList();
    }
    if (note != null) {
      map['note'] = note?.toJson();
    }
    map['id'] = id;
    return map;
  }

}

/// description : "string"
/// id : 1

class Note {
  Note({
      this.description, 
      this.id,});

  Note.fromJson(dynamic json) {
    description = json['description'];
    id = json['id'];
  }
  String? description;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['id'] = id;
    return map;
  }

}