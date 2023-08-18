import 'package:bank_ghavanin/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/feature_roster/presentation/screens/book_roster_screen.dart';
import 'features/feature_roster/presentation/screens/chapters_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('fa'),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.RouteLogin,
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: BookRosterScreen(),
    );
  }
}
