import 'package:bank_ghavanin/core/resources/data_state.dart';
import 'package:bank_ghavanin/features/feature_home/data/data_source/remote/api_provider.dart';
import 'package:bank_ghavanin/features/feature_home/data/models/home_model.dart';
import 'package:bank_ghavanin/features/feature_home/domain/entities/home_entity.dart';
import 'package:bank_ghavanin/features/feature_home/domain/repository/home_repository.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeApiProvider homeApiProvider;

  HomeRepositoryImpl({required this.homeApiProvider});

  @override
  Future<DataState<HomeEntity>> fetchHomeCategory() async {
    try {
      Response response = await homeApiProvider.callHomeCategory();
      if (response.statusCode == 200) {
        HomeEntity homeEntity = HomeModel.fromJson(response.data);

        return DataSuccess(homeEntity);
      } else {
        return const DataFailed("Something Went Wrong. try again...");
      }
    } catch (e) {
      return const DataFailed("please check your connection...");
    }
  }
}
