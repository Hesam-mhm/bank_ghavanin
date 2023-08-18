import 'package:bank_ghavanin/features/feature_auth/data/models/login_model.dart';
import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable{
  ResponseData? responseData ;


  LoginEntity({this.responseData});

  @override
  List<Object?> get props =>[responseData];

}