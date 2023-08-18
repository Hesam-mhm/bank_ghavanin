import 'package:bank_ghavanin/features/feature_text/data/data_source/text_api_provider.dart';
import 'package:bank_ghavanin/features/feature_text/data/model/text_model.dart';
import 'package:bank_ghavanin/features/feature_text/domain/entity/text_entity.dart';
import 'package:bank_ghavanin/core/resources/data_state.dart';
import 'package:dio/dio.dart';
import '../../domain/repository/text_repository.dart';

class TextRepositoryImpl extends TextRepository{
  TextApiProvider textApiProvider;
  TextRepositoryImpl({required this.textApiProvider});
  @override
  Future<DataState<TextEntity>> fetchTextData( id) async {
    try{
      Response response=await textApiProvider.callText(id);
      if(response.statusCode==200){
        TextEntity textEntity=TextModel.fromJson(response.data);
        return DataSuccess(textEntity);
      }else{
        return DataFailed("Something Went Wrong. try again...");
      }

    }catch(e){
     return DataFailed(e.toString());
    }
    
  }

}