import 'package:bank_ghavanin/core/params/selecteed_item_in_chapter.dart';
import 'package:bank_ghavanin/core/resources/data_state.dart';
import 'package:bank_ghavanin/features/feature_text/domain/entity/text_entity.dart';
import 'package:bank_ghavanin/features/feature_text/domain/usecase/text_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  TextUsecase textUsecase;
  TextController({required this.textUsecase});
  RxString mainTilteName = RxString("")().obs;
  Rx<TextEntity> myTextentity = TextEntity().obs;
  Rx<String> storeName = 'فروشگاه عابدی ستارخان'.obs;
  Rx<bool> scrollHorizontal = true.obs;
  Rx<bool> loading = false.obs;
  final Rx<PageController> pageController = PageController(initialPage: 0).obs;
  @override
  onInit() {
    super.onInit();
    gettextPageItems(id: SelectedItemInChapter.rosterId,title: SelectedItemInChapter.chapterTitle);
  }

  Future<void> gettextPageItems({required id,required String title}) async {
    loading.value=true;
    DataState dataState = await textUsecase.call(id);
    if(dataState is DataSuccess){
      TextEntity textEntity=dataState.data;
      myTextentity.value=textEntity;
      mainTilteName.value=title;
      loading.value=false;
    }
       if (dataState is DataFailed) {
      print(dataState.error);
    }
  }
}
