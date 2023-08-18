import 'package:bank_ghavanin/features/feature_roster/domain/entity/mavad_roster_entity.dart';
import 'package:get/get.dart';

import '../../../../core/params/selected_book_in_rooster.dart';
import '../../../../core/resources/data_state.dart';
import '../../data/model/mavad_roster_model.dart';
import '../../domain/usecase/mavad_roster_usecase.dart';

class MavadRosterController extends GetxController{
  MavadRosterUsecase mavadRosterUsecase;
  MavadRosterController({required this.mavadRosterUsecase});
  RxList<PageItems> allMavad = RxList();

  @override
  onInit(){
    super.onInit();
    getMavadRosterData(bookId:  SelectedBookInRoster.bookId);

  }

  Future<void> getMavadRosterData({required int bookId}) async {

    DataState dataState =
    await mavadRosterUsecase.call(bookId);
    if (dataState is DataSuccess) {
      MavadRosterEntity mavadRosterEntity = dataState.data;
    allMavad.value =  mavadRosterEntity.responseData!.resultData!.pageItems! ;

    }
    if (dataState is DataFailed) {
      print(dataState.error);
    }
  }




}