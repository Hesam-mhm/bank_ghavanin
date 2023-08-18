

import 'package:get/get.dart';

import '../../../../core/params/selected_category_in_home.dart';
import '../../../../core/resources/data_state.dart';
import '../../data/model/roster_model.dart';
import '../../domain/entity/delete_favorite_entity.dart';
import '../../domain/entity/post_favorite_entity.dart';
import '../../domain/entity/roster_entity.dart';
import '../../domain/usecase/delete_favorite_usecase.dart';
import '../../domain/usecase/post_favorite_usecase.dart';
import '../../domain/usecase/roster_usecase.dart';

class RosterController extends GetxController {
  PostFavoriteUseCase postFavoriteUseCase;
  DeleteFavoriteUseCase deleteFavoriteUseCase;
  RosterUseCase rosterUseCase;
  RosterController(
      {required this.rosterUseCase,
      required this.postFavoriteUseCase,
      required this.deleteFavoriteUseCase});


  RxList<PageItems> pageItemslist = RxList();
  Rx<PostFavoriteEntity> postFavoriteItems = PostFavoriteEntity().obs;
  Rx<DeleteFavoriteEntity> deleteFavoriteItems = DeleteFavoriteEntity().obs;
  Rx<RosterEntity> myRosterEntity = RosterEntity().obs;
  RxString mainTilteName = RxString("")().obs;
  RxList saveList = RxList();
  RxBool loading = false.obs;


  @override
  onInit() {
    super.onInit();
    getRosterItems(SelectedCataegoryInHome.categoryId, SelectedCataegoryInHome.categoryTitle);
  }

 Future<void> getRosterItems(int CategoryId, String mainTitle) async {
    loading.value = true;


    DataState dataState = await rosterUseCase.call(CategoryId);
    if (dataState is DataSuccess) {
      RosterEntity rosterEntity = dataState.data;
      myRosterEntity.value = rosterEntity;
      mainTilteName.value = mainTitle;

      pageItemslist.value = rosterEntity.responseData!.resultData!.pageItems!;

      loading.value = false;
    }
    if (dataState is DataFailed) {
      print(dataState.error);
    }
  }

 Future<void> postFavorite(index) async {
    Map<String, List> bookId = {
      "bookId": [pageItemslist[index].id]
    };
    DataState dataState = await postFavoriteUseCase.call(bookId);
    // print(dataState.data);
    if (dataState is DataSuccess) {
      PostFavoriteEntity postFavoriteEntity = dataState.data;
      postFavoriteItems.value = postFavoriteEntity;
    }
    if (dataState is DataFailed) {
      print(dataState.error);
    }
  }

 Future<void> deleteFavorite(index) async {
    Map<String, List> bookId = {
      "bookId": [pageItemslist[index].id]
    };
    DataState dataState = await deleteFavoriteUseCase.call(bookId);
    if (dataState is DataSuccess) {
      DeleteFavoriteEntity deleteFavoriteEntity = dataState.data;

      deleteFavoriteItems.value = deleteFavoriteEntity;
    }
    if (dataState is DataFailed) {
      print(dataState.error);
    }
  }
}
