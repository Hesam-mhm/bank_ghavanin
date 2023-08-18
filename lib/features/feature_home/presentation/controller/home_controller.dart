import 'package:bank_ghavanin/core/resources/data_state.dart';
import 'package:bank_ghavanin/core/usecase/usecase.dart';
import 'package:bank_ghavanin/features/feature_home/data/models/home_model.dart';
import 'package:bank_ghavanin/features/feature_home/domain/entities/home_entity.dart';
import 'package:bank_ghavanin/features/feature_home/domain/usecase/home_usecase.dart';
import 'package:get/get.dart';


class HomeController extends GetxController{
  HomeUsecase homeUsecase ;
  HomeController({required this.homeUsecase});

  RxList<PageItems> category = RxList();
  RxList<PageItems> trueShowListCategory = RxList();
  RxList<PageItems> falseShowListCategory = RxList();

  RxBool loading = false.obs ;




Future<void> getHomeCategories() async{
loading.value = true ;
DataState dataState =await homeUsecase.call(NoParams());
if(dataState is DataSuccess){
  HomeEntity homeEntity = dataState.data ;
category.value = homeEntity.responseData!.resultData!.pageItems!;
  trueShowListCategory.clear();
  falseShowListCategory.clear();
  category.forEach((element) {
    if(element.showList== true){
      trueShowListCategory.add(element);
    }else{
      falseShowListCategory.add(element);
    }
  });

}
if(dataState is DataFailed){
  print(dataState.error);
}
loading.value = false ;
 }


}







