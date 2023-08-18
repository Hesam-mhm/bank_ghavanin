
import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/book_rooster_entity.dart';
import '../repository/roster_repository.dart';

class BookRosterUsecase extends UseCase<DataState<BookRosterEntity>,int>{
  RosterRepository rosterRepository ;
  BookRosterUsecase({required this.rosterRepository});

  @override
  Future<DataState<BookRosterEntity>> call(int  bookId) {
return rosterRepository.fetchBookRosterRepository(bookId);
  }

}