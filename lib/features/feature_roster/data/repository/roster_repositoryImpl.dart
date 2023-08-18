

import 'package:bank_ghavanin/features/feature_roster/data/model/MavadListChapterModel.dart';
import 'package:bank_ghavanin/features/feature_roster/data/model/mavad_roster_model.dart';
import 'package:bank_ghavanin/features/feature_roster/domain/entity/mavad_list_chapter_entity.dart';
import 'package:bank_ghavanin/features/feature_roster/domain/entity/mavad_roster_entity.dart';
import 'package:dio/dio.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/entity/book_rooster_entity.dart';
import '../../domain/entity/delete_favorite_entity.dart';
import '../../domain/entity/post_favorite_entity.dart';
import '../../domain/entity/roster_entity.dart';
import '../../domain/repository/roster_repository.dart';
import '../data_source/remote/roster_api_provider.dart';
import '../model/book-roster-model.dart';
import '../model/delete_favorite_model.dart';
import '../model/post_favorite_model.dart';
import '../model/roster_model.dart';

class RosterRepositoryImpl extends RosterRepository {
  RosterApiProvider rosterApiProvider;
  RosterRepositoryImpl({required this.rosterApiProvider});

  //Roster
  @override
  Future<DataState<RosterEntity>> fetchRosterData(CategoryId) async {
    try {
      Response response = await rosterApiProvider.callBookRoster(CategoryId);
      if (response.statusCode == 200) {
        RosterEntity rosterEntity = RosterModel.fromJson(response.data);
        return DataSuccess(rosterEntity);
      } else {
        return DataFailed("Something Went Wrong. try again...");
      }
    } catch (e) {
      return DataFailed(e.toString());
    }
  }

  @override
  Future<DataState<PostFavoriteEntity>> fetchPostFavoriteData(Map<String, List> bookId) async {
    try {
      Response response = await rosterApiProvider.saveBookFavorite(bookId);
      if (response.statusCode == 200) {
        PostFavoriteEntity postFavoriteEntity =
            PostFavoriteModel.fromJson(response.data);
        return DataSuccess(postFavoriteEntity);
      } else {
        return DataFailed("Something Went Wrong. try again...");
      }
    } catch (e) {
      return DataFailed(e.toString());
    }
  }

  @override
  Future<DataState<DeleteFavoriteEntity>> fetchDeleteFavoriteData(
      Map<String, List> bookId) async {
    try {
      Response response = await rosterApiProvider.deleteBookFavorite(bookId);
      if (response.statusCode == 200) {
        DeleteFavoriteEntity deleteFavoriteEntity =DeleteFavoriteModel.fromJson(response.data);
        return DataSuccess(deleteFavoriteEntity);
      } else {
        return DataFailed("Something Went Wrong. try again...");
      }
    } catch (e) {
      return DataFailed(e.toString());
    }
  }


  //Book-Roster
  @override
  Future<DataState<BookRosterEntity>> fetchBookRosterRepository(
      int bookId) async {
    try {
      Response response =
      await rosterApiProvider.callBookRosterData(bookId);
      if (response.statusCode == 200) {
        BookRosterEntity bookRosterEntity =
        BookRosterModel.fromJson(response.data);

        return DataSuccess(bookRosterEntity);
      } else {
        return const DataFailed("Something Went Wrong. try again...");
      }
    } catch (e) {
      return const DataFailed("please check your connection...");
    }
  }

  //Mavad-Roster
  @override
  Future<DataState<MavadRosterEntity>> fetchMavadRosterRepository(
      int bookId) async {
    try {
      Response response =
      await rosterApiProvider.callMavadRosterData(bookId);
      if (response.statusCode == 200) {
        MavadRosterEntity mavadRosterEntity =
        MavadRosterModel.fromJson(response.data);

        return DataSuccess(mavadRosterEntity);
      } else {
        return const DataFailed("Something Went Wrong. try again...");
      }
    } catch (e) {
      return const DataFailed("please check your connection...");
    }
  }

//  Mavad-List-Chapter
  @override
  Future<DataState<MavadListChapterEntity>> fetchMavadListChapterRepository(
      int rosterId) async {
    try {
      Response response =
      await rosterApiProvider.callMavadListChapterData(rosterId);
      if (response.statusCode == 200) {
        MavadListChapterEntity mavadListChapterEntity =
        MavadListChapterModel.fromJson(response.data);

        return DataSuccess(mavadListChapterEntity);
      } else {
        return const DataFailed("Something Went Wrong. try again...");
      }
    } catch (e) {
      return const DataFailed("please check your connection...");
    }
  }

}
