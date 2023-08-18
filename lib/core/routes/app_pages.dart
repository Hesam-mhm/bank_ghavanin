
import 'package:bank_ghavanin/features/feature_auth/presentation/routes/auth_routes.dart';
import 'package:bank_ghavanin/features/feature_home/presentation/routes/home_route.dart';
import 'package:get/get.dart';

import '../../features/feature_roster/presentation/rooute/roster_route.dart';
import '../../features/feature_text/presentation/route/text_route.dart';

part 'app_routes.dart';

class AppPages {
  static String get initialRoute{
    return AppRoutes.RouteLogin;
  }

  static List<GetPage> get pages => [
    ...authRoutes,
    ...homeRoutes,
    ...rosterRoutes,
    ...textRoutes,

  ];
}