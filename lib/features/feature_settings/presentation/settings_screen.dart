import 'package:bank_ghavanin/core/widgets/main_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: Column(
          children: [
            Spacer(),
            AppBar(
              leading: GestureDetector(
                onTap: () => Navigator.of(context).push(_createRoute()),
                child: SvgPicture.asset(
                  'assets/images/arrow-div.svg',
                  height: 10,
                  width: 10,
                  color: Color(0xff354052),
                ),
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
              elevation: 0,
              title: Text(
                'تنظیمات',
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'YekanBold',
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Settings',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }


  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const MainView(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
