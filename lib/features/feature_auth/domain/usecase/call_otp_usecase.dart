import 'package:bank_ghavanin/core/resources/data_state.dart';
import 'package:bank_ghavanin/core/usecase/usecase.dart';
import 'package:bank_ghavanin/features/feature_auth/domain/entities/otp_entity.dart';
import 'package:bank_ghavanin/features/feature_auth/domain/repository/auth_repository.dart';

class CallOtpUsecase
    extends UseCase<DataState<OtpEntity>, Map<String, dynamic>> {
  AuthRepository authRepository;

  CallOtpUsecase({required this.authRepository});

  @override
  Future<DataState<OtpEntity>> call(Map<String, dynamic> map) {
    return authRepository.fetchOtpData(map);
  }
}
