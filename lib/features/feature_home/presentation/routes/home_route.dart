import 'package:bank_ghavanin/core/routes/app_pages.dart';
import 'package:bank_ghavanin/features/feature_home/presentation/bindings/home_bindings.dart';
import 'package:bank_ghavanin/features/feature_home/presentation/screens/home_screen.dart';
import 'package:get/get.dart';

List<GetPage> homeRoutes = [
  GetPage(name: AppRoutes.RouteHome, page: ()=> HomeScreen(),binding:HomeBindings() ),

];