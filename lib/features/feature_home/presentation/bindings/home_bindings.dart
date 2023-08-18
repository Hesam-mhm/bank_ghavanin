import 'package:bank_ghavanin/features/feature_home/data/data_source/remote/api_provider.dart';
import 'package:bank_ghavanin/features/feature_home/data/repository/home_repositoryImpl.dart';
import 'package:bank_ghavanin/features/feature_home/domain/usecase/home_usecase.dart';
import 'package:bank_ghavanin/features/feature_home/presentation/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>HomeApiProvider());
   Get.lazyPut(()=>HomeRepositoryImpl(homeApiProvider: Get.find<HomeApiProvider>()));
   Get.lazyPut(()=>HomeUsecase(homeRepository: Get.find<HomeRepositoryImpl>()));
   Get.lazyPut(()=>HomeController(homeUsecase: Get.find<HomeUsecase>()));
  }

}