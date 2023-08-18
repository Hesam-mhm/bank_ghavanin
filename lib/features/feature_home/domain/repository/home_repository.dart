import 'package:bank_ghavanin/features/feature_home/domain/entities/home_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class HomeRepository {

  Future<DataState<HomeEntity>> fetchHomeCategory ();
}