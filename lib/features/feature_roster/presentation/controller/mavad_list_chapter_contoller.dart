import 'package:bank_ghavanin/features/feature_roster/data/model/MavadListChapterModel.dart';
import 'package:bank_ghavanin/features/feature_roster/domain/entity/mavad_list_chapter_entity.dart';
import 'package:bank_ghavanin/features/feature_roster/domain/usecase/mavad_list_chapter_usecase.dart';
import 'package:bank_ghavanin/features/feature_roster/domain/usecase/mavad_roster_usecase.dart';
import 'package:get/get.dart';

import '../../../../core/resources/data_state.dart';

class MavadListChapterController extends GetxController{
  MavadListChapterUsecase mavadListChapterUsecase ;
  MavadListChapterController({required this.mavadListChapterUsecase});


  //Variables
  RxList<PageItems> allMavadOfThisChapter = RxList();
  Rx<String> chapterTitle = "".obs ;







  Future<void> getMavadListChapterData({required int rosterId,required String chaptersTitle}) async {

    DataState dataState =
    await mavadListChapterUsecase.call(rosterId);
    chapterTitle.value = chaptersTitle;
    if (dataState is DataSuccess) {
      MavadListChapterEntity mavadRosterEntity = dataState.data;
      allMavadOfThisChapter.value= mavadRosterEntity.responseData!.resultData!.pageItems!;
    }
    if (dataState is DataFailed) {
      print(dataState.error);
    }
  }



}