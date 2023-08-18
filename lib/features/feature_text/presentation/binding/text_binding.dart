import 'package:get/get.dart';

import '../../data/data_source/text_api_provider.dart';
import '../../data/repository/text_repositoryImpl.dart';
import '../../domain/usecase/text_usecase.dart';
import '../controller/text_controller.dart';

class TextBinding extends Bindings{
  
  @override
  void dependencies() {

    Get.lazyPut(() => TextApiProvider());
    Get.lazyPut(() => TextRepositoryImpl(textApiProvider: Get.find<TextApiProvider>() ));
    Get.lazyPut(() => TextUsecase(textRepository:  Get.find<TextRepositoryImpl>()));
    Get.lazyPut(() => TextController(textUsecase: Get.find<TextUsecase>()));
  }
}