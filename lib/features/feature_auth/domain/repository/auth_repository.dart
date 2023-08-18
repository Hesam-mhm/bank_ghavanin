import 'package:bank_ghavanin/features/feature_auth/domain/entities/login_entity.dart';

import '../../../../core/resources/data_state.dart';
import '../entities/otp_entity.dart';

abstract class AuthRepository {

  Future<DataState<LoginEntity>> fetchLoginData(Map<String,dynamic> map);
  Future<DataState<OtpEntity>> fetchOtpData(Map<String,dynamic> map);

}