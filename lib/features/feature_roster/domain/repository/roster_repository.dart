
import 'package:bank_ghavanin/features/feature_roster/domain/entity/mavad_list_chapter_entity.dart';
import 'package:bank_ghavanin/features/feature_roster/domain/entity/mavad_roster_entity.dart';

import '../../../../core/resources/data_state.dart';
import '../entity/book_rooster_entity.dart';
import '../entity/delete_favorite_entity.dart';
import '../entity/post_favorite_entity.dart';
import '../entity/roster_entity.dart';

abstract class RosterRepository{

  //Roster
  Future<DataState<RosterEntity>> fetchRosterData(CategoryId);
  Future<DataState<PostFavoriteEntity>> fetchPostFavoriteData(Map<String, List> bookId);
  Future<DataState<DeleteFavoriteEntity>> fetchDeleteFavoriteData(Map<String, List> bookId);

  // Book-Roster
  Future<DataState<BookRosterEntity>> fetchBookRosterRepository(int bookId) ;

  //Mavad-Roster
  Future<DataState<MavadRosterEntity>> fetchMavadRosterRepository(int bookId) ;

//  Mavad-List-Chapter
  Future<DataState<MavadListChapterEntity>> fetchMavadListChapterRepository(int roosterId) ;



}