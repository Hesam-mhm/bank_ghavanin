import 'package:bank_ghavanin/core/resources/data_state.dart';
import 'package:bank_ghavanin/features/feature_auth/data/data_source/remote/api_provider.dart';
import 'package:bank_ghavanin/features/feature_auth/domain/entities/login_entity.dart';
import 'package:bank_ghavanin/features/feature_auth/domain/repository/auth_repository.dart';
import 'package:dio/dio.dart';

import '../../domain/entities/otp_entity.dart';
import '../models/login_model.dart';
import '../models/otp_model.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthApiProvider authApiProvider;

  AuthRepositoryImpl({required this.authApiProvider});

  @override
  Future<DataState<LoginEntity>> fetchLoginData(
      Map<String, dynamic> map) async {
    try {
      Response response = await authApiProvider.login(map);
      if (response.statusCode == 200) {
        LoginEntity loginEntity = LoginModel.fromJson(response.data);
        return DataSuccess(loginEntity);
      } else {
        return  DataFailed(response.toString());
      }
    } catch (e) {
      return  DataFailed(e.toString());
    }
  }



  @override
  Future<DataState<OtpEntity>> fetchOtpData(Map<String, dynamic> map) async {
    try {
      Response response = await authApiProvider.callOtpCode(map);
      print(response.statusCode);
      if (response.statusCode == 200) {
        OtpEntity otpEntity = OtpModel.fromJson(response.data);
        return DataSuccess(otpEntity);
      } else {
        return const DataFailed("Something Went Wrong. try again...");
      }
    } catch (e) {
      return const DataFailed("please check your connection...");
    }
  }
}
