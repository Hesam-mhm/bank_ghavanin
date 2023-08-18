

import 'package:bank_ghavanin/features/feature_roster/domain/usecase/mavad_list_chapter_usecase.dart';
import 'package:bank_ghavanin/features/feature_roster/domain/usecase/mavad_roster_usecase.dart';
import 'package:bank_ghavanin/features/feature_roster/presentation/controller/booke_roster_controller.dart';
import 'package:bank_ghavanin/features/feature_roster/presentation/controller/mavad_list_chapter_contoller.dart';
import 'package:bank_ghavanin/features/feature_roster/presentation/controller/mavad_roster_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../../data/data_source/remote/roster_api_provider.dart';
import '../../data/repository/roster_repositoryImpl.dart';
import '../../domain/usecase/book_roster_usecase.dart';
import '../../domain/usecase/delete_favorite_usecase.dart';
import '../../domain/usecase/post_favorite_usecase.dart';
import '../../domain/usecase/roster_usecase.dart';
import '../controller/roster_controller.dart';

class RosterBinding extends Bindings{
  
  @override
  void dependencies() {
    Get.lazyPut(() => RosterApiProvider());
    Get.lazyPut(() => RosterRepositoryImpl(rosterApiProvider: Get.find<RosterApiProvider>()));
    Get.lazyPut(() => RosterUseCase(rosterRepository: Get.find<RosterRepositoryImpl>()));
    Get.lazyPut(() => BookRosterUsecase(rosterRepository: Get.find<RosterRepositoryImpl>()));
    Get.lazyPut(() => MavadRosterUsecase(rosterRepository: Get.find<RosterRepositoryImpl>()));
    Get.lazyPut(() => PostFavoriteUseCase(rosterRepository: Get.find<RosterRepositoryImpl>()));
    Get.lazyPut(() => MavadListChapterUsecase(rosterRepository: Get.find<RosterRepositoryImpl>()));
    Get.lazyPut(() => DeleteFavoriteUseCase(rosterRepository: Get.find<RosterRepositoryImpl>()));
    Get.lazyPut(() => RosterController(deleteFavoriteUseCase: Get.find<DeleteFavoriteUseCase>(),postFavoriteUseCase: Get.find<PostFavoriteUseCase>(),rosterUseCase: Get.find<RosterUseCase>()));
    Get.lazyPut(() => BookRosterController(bookRosterUsecase: Get.find<BookRosterUsecase>()));
    Get.lazyPut(() => MavadRosterController(mavadRosterUsecase: Get.find<MavadRosterUsecase>()));
    Get.lazyPut(() => MavadListChapterController(mavadListChapterUsecase: Get.find<MavadListChapterUsecase>()));
  }
}


