import 'package:bank_ghavanin/features/feature_auth/data/data_source/remote/api_provider.dart';
import 'package:bank_ghavanin/features/feature_auth/data/repository/auth_repository_impl.dart';
import 'package:bank_ghavanin/features/feature_auth/domain/usecase/call_otp_usecase.dart';
import 'package:bank_ghavanin/features/feature_auth/domain/usecase/login_usecase.dart';
import 'package:bank_ghavanin/features/feature_auth/presentation/controller/auth_controller.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings{
  
  @override
  void dependencies() {
    Get.lazyPut(() => AuthApiProvider());
    Get.lazyPut(() => AuthRepositoryImpl(authApiProvider:  Get.find<AuthApiProvider>()));
    Get.lazyPut(() => LoginUsecase(authRepository:  Get.find<AuthRepositoryImpl>()));
    Get.lazyPut(() => CallOtpUsecase(authRepository:  Get.find<AuthRepositoryImpl>()));
    Get.lazyPut(() => AuthController(loginUsecase: Get.find<LoginUsecase>(),callOtpUsecase: Get.find<CallOtpUsecase>()));
  }
}