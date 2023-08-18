import 'package:bank_ghavanin/core/usecase/usecase.dart';
import 'package:bank_ghavanin/features/feature_home/domain/entities/home_entity.dart';
import 'package:bank_ghavanin/features/feature_home/domain/repository/home_repository.dart';

import '../../../../core/resources/data_state.dart';

class HomeUsecase extends UseCase<DataState<HomeEntity>,NoParams>{
  HomeRepository homeRepository ;

  HomeUsecase({required this.homeRepository});

  @override
  Future<DataState<HomeEntity>> call(NoParams) {
    return homeRepository.fetchHomeCategory();

  }

}