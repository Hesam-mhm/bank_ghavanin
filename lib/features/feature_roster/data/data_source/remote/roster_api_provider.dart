import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import '../../../../../core/constants/constants.dart';

class RosterApiProvider {
  Dio dio = Dio();


  //Roster Api
  Future<dynamic> callBookRoster(int CategoryId) async {
    Response response =
        await dio.get(kBaseUrl + "/api/Book/GetAll", queryParameters: {
      "CategoryId": CategoryId,
      "PageId": "",
      "PageLimit": "",
    });
     log(response.headers.toString());
    log(response.data.toString());
    log(response.statusCode.toString());
    return response;
  }

  Future<dynamic> saveBookFavorite(Map<String, List> bookId) async {
    final body = jsonEncode(bookId);

    Response response = await dio
        .post(kBaseUrl + "/api/BookFavorite/Create",
            data: body,
            options: Options(
              responseType: ResponseType.json,
              method: "Post",
              contentType: "application/json",
            ))
        .then((response) {
       log(response.headers.toString());
      log(response.data.toString());
      log(response.statusCode.toString());
      return response;
    });
          return response;

  }

  Future<dynamic> deleteBookFavorite(Map<String, List> bookId) async {
    final body = jsonEncode(bookId);

    Response response = await dio
        .delete(kBaseUrl + "/api/BookFavorite/Delete",
            data:body ,
            options: Options(
              responseType: ResponseType.json,
              method: "Delete",
              contentType: "application/json",
            ))
        .then((response) {
      //  log(response.headers.toString());
      // log(response.data.toString());
      // log(response.statusCode.toString());
      return response;
    });
          return response;

  }

  //Book-Roster Api
  Future<dynamic> callBookRosterData(int bookId) async{
    dio.options.headers['content-Type'] = 'application/json';
    Response response = await dio
        .get(kBaseUrl + "/api/BookRoster/GetAll",
        queryParameters: {
          'BookId' : bookId ,
          'PageId' : '',
          'PageLimit' : ''
        },
        options: Options(responseType: ResponseType.json, method: 'GET'))
        .then((value) {
      log(value.headers.toString());
      log(value.data.toString());
      log(value.statusCode.toString());
      return value;
    }).catchError((err) {
      if (err is DioError) {
        return err.response!;
      }
      return err.response;
    });
    return response;
  }

//  Mavad-Roster Api
  Future<dynamic> callMavadRosterData(int bookId) async{
    dio.options.headers['content-Type'] = 'application/json';
    Response response = await dio
        .get(kBaseUrl + "/api/BookArticle/GetAllByBookId",
        queryParameters: {
          'BookId' : bookId ,
          'PageId' : '',
          'PageLimit' : ''
        },
        options: Options(responseType: ResponseType.json, method: 'GET'))
        .then((value) {
      log(value.headers.toString());
      log(value.data.toString());
      log(value.statusCode.toString());
      return value;
    }).catchError((err) {
      if (err is DioError) {
        return err.response!;
      }
      return err.response;
    });
    return response;
  }

//  Mavad-List Chapter Api
  Future<dynamic> callMavadListChapterData(int rosterId) async{
    dio.options.headers['content-Type'] = 'application/json';
    Response response = await dio
        .get(kBaseUrl + "/api/BookArticle/GetAllByRosterId",
        queryParameters: {
          'RosterId' : rosterId ,
          'PageId' : '',
          'PageLimit' : ''
        },
        options: Options(responseType: ResponseType.json, method: 'GET'))
        .then((value) {
      log(value.headers.toString());
      log(value.data.toString());
      log(value.statusCode.toString());
      return value;
    }).catchError((err) {
      if (err is DioError) {
        return err.response!;
      }
      return err.response;
    });
    return response;
  }

}
