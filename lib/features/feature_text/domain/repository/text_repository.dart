import 'package:bank_ghavanin/features/feature_text/domain/entity/text_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class TextRepository{

  Future<DataState<TextEntity>> fetchTextData(id);
}