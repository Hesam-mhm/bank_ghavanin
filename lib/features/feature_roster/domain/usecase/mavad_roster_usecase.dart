
import 'package:bank_ghavanin/features/feature_roster/domain/entity/mavad_roster_entity.dart';
import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/roster_repository.dart';

class MavadRosterUsecase extends UseCase<DataState<MavadRosterEntity>,int>{
  RosterRepository rosterRepository ;
   MavadRosterUsecase({required this.rosterRepository});

  @override
  Future<DataState<MavadRosterEntity>> call(int  bookId) {
    return rosterRepository.fetchMavadRosterRepository(bookId);
  }

}