import 'package:bank_ghavanin/core/resources/data_state.dart';
import 'package:bank_ghavanin/core/usecase/usecase.dart';
import 'package:bank_ghavanin/features/feature_auth/domain/repository/auth_repository.dart';

import '../entities/login_entity.dart';

class LoginUsecase
    extends UseCase<DataState<LoginEntity>, Map<String, dynamic>> {
  AuthRepository authRepository;

  LoginUsecase({required this.authRepository});

  @override
  Future<DataState<LoginEntity>> call(Map<String, dynamic> map) {
    return authRepository.fetchLoginData(map);
  }
}
