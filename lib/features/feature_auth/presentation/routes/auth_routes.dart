

import 'package:bank_ghavanin/core/routes/app_pages.dart';
import 'package:bank_ghavanin/features/feature_auth/presentation/bindings/auth_binding.dart';
import 'package:bank_ghavanin/features/feature_auth/presentation/screens/login_screen.dart';
import 'package:bank_ghavanin/features/feature_auth/presentation/screens/otp_screen.dart';
import 'package:get/get.dart';

List<GetPage> authRoutes = [
  GetPage(name: AppRoutes.RouteLogin, page: ()=> LoginP1(),binding:AuthBinding() ),
  GetPage(name: AppRoutes.RouteLogin2, page: ()=> LoginP2(),binding:AuthBinding() ),
  GetPage(name: AppRoutes.RouteOtp, page: ()=> OtpScreen(),binding:AuthBinding() ),
];