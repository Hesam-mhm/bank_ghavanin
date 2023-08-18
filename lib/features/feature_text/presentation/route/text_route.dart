import 'package:bank_ghavanin/features/feature_text/presentation/screen/text_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../../../core/routes/app_pages.dart';
import '../binding/text_binding.dart';

List<GetPage> textRoutes = [
  GetPage(name: AppRoutes.RouteText, page: ()=> TextScreen(),binding:TextBinding() ),

];
