
import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/delete_favorite_entity.dart';
import '../repository/roster_repository.dart';

class DeleteFavoriteUseCase extends UseCase<DataState<DeleteFavoriteEntity>,Map<String, List>>{
  RosterRepository rosterRepository;
  DeleteFavoriteUseCase({required this.rosterRepository});
  @override
  Future<DataState<DeleteFavoriteEntity>> call(Map<String, List> bookId) {
   return rosterRepository.fetchDeleteFavoriteData ( bookId);


  }

}