

import 'package:bank_ghavanin/core/resources/data_state.dart';

import '../../../../core/usecase/usecase.dart';
import '../entity/roster_entity.dart';
import '../repository/roster_repository.dart';

class RosterUseCase extends UseCase<DataState<RosterEntity>,int>{
  RosterRepository rosterRepository;
  RosterUseCase({required this.rosterRepository});
  @override
  Future<DataState<RosterEntity>> call(int CategoryId) {
return rosterRepository.fetchRosterData(CategoryId);
  }

  
}