
import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/post_favorite_entity.dart';
import '../repository/roster_repository.dart';

class PostFavoriteUseCase extends UseCase<DataState<PostFavoriteEntity>,Map<String, List>>{
  RosterRepository rosterRepository;
  PostFavoriteUseCase({required this.rosterRepository});
  @override
  Future<DataState<PostFavoriteEntity>> call(Map<String, List> bookId) {
   return rosterRepository.fetchPostFavoriteData ( bookId);


  }

}