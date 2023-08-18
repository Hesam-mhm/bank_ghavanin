import 'package:bank_ghavanin/features/feature_roster/domain/entity/mavad_list_chapter_entity.dart';

import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/roster_repository.dart';

class MavadListChapterUsecase extends UseCase<DataState<MavadListChapterEntity>,int>{
  RosterRepository rosterRepository ;
  MavadListChapterUsecase({required this.rosterRepository});

  @override
  Future<DataState<MavadListChapterEntity>> call(int  rosterId) {
    return rosterRepository.fetchMavadListChapterRepository(rosterId);
  }

}