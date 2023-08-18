import 'package:bank_ghavanin/core/resources/data_state.dart';
import 'package:bank_ghavanin/core/usecase/usecase.dart';
import 'package:bank_ghavanin/features/feature_text/domain/entity/text_entity.dart';
import 'package:bank_ghavanin/features/feature_text/domain/repository/text_repository.dart';

class TextUsecase extends UseCase<DataState<TextEntity>,int>{
  TextRepository textRepository;
  TextUsecase({
required this.textRepository
  });
  @override
  Future<DataState<TextEntity>> call(int id) {
    return textRepository.fetchTextData(id);

  }
}  
