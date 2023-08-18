



import 'package:bank_ghavanin/features/feature_roster/presentation/screens/book_roster_screen.dart';
import 'package:bank_ghavanin/features/feature_roster/presentation/screens/mavad_list_chapter.dart';
import 'package:get/get.dart';
import '../../../../core/routes/app_pages.dart';
import '../Screens/roster_screen.dart';
import '../binding/roster_binding.dart';
import '../screens/chapters_screen.dart';

List<GetPage> rosterRoutes = [
  GetPage(name: AppRoutes.RouteRoster, page: ()=> RosterScreen(),binding:RosterBinding() ),
  GetPage(name: AppRoutes.RouteBookRoster, page: ()=> BookRosterScreen(),binding:RosterBinding() ),
  GetPage(name: AppRoutes.RouteChapters, page: ()=> ChaptersScreen(),binding:RosterBinding() ),
  GetPage(name: AppRoutes.RouteMavadListChapter, page: ()=> MavadListChapterScreen(),binding:RosterBinding() ),

];

