import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../features/feature_home/presentation/screens/home_screen.dart';
import '../../features/feature_notes/presentation/notes_screen.dart';
import '../../features/feature_saves/presentation/saves_screen.dart';
import '../../features/feature_settings/presentation/settings_screen.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class AppStrings {
  static const String home = "بانک قوانین";
  static const String notes = "ذخیره ها";
  static const String saves = "یادداشت ها";
}

class _MainViewState extends State<MainView> {
  List<Widget> pages = [
    NotesScreen(),
    SavesScreen(),
    HomeScreen(),
  ];
  List<String> titles = [
    AppStrings.saves,
    AppStrings.notes,
    AppStrings.home,
  ];
  var _title = AppStrings.home;
  var _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Column(
            children: [
              Spacer(),
              AppBar(
                title: Text(
                  _title,
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontFamily: 'YekanBold',
                    fontSize: 20,
                  ),
                ),
                centerTitle: true,
                elevation: 0,
                backgroundColor: Color(0xffFFFFFF),
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: SvgPicture.asset(
                        'assets/images/menu.svg',
                        height: 12,
                        width: 20,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    );
                  },
                ),
                actions: [
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/search.svg',
                      height: 20,
                      width: 20,
                    ),
                    onPressed: () {
                      // handle the press
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffDD3636),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.account_circle_outlined,
                                    color: Color(0xff687487),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text(
                                    'بانک قوانین',
                                    style: TextStyle(
                                      fontFamily: 'YekanBold',
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/images/edit.svg',
                                height: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(_createRoute());
                                },
                                  child: DividerCat('update.svg', 'بروزرسانی')),
                              SizedBox(
                                height: 20,
                              ),
                              DividerCat('set.svg', 'تنظیمات'),
                              SizedBox(
                                height: 20,
                              ),
                              DividerCat('info.svg', 'درباره ما'),
                              SizedBox(
                                height: 20,
                              ),
                              DividerCat('rate.svg', 'نظر به برنامه'),
                              SizedBox(
                                height: 20,
                              ),
                              DividerCat('logout.svg', 'خروج از حساب کاربری'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Text(
                              'نسخه برنامه  1.0.0',
                              style: TextStyle(
                                fontFamily: 'YekanBold',
                                fontSize: 20,
                                color: Color(0xff354052),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        body: pages[_currentIndex],
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 60,
              right: 60,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: _currentIndex,
              onTap: onTap,
              fixedColor: Color(0xffDD3636),
              selectedLabelStyle: TextStyle(
                fontFamily: 'YekanBold',
                fontSize: 15,
              ),
              unselectedLabelStyle: TextStyle(
                fontFamily: 'YekanLight',
                fontSize: 15,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SvgPicture.asset(
                      'assets/images/notes.svg',
                      height: 20,
                      width: 20,
                      color: Color(0xff888888),
                    ),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SvgPicture.asset(
                      'assets/images/notes.svg',
                      height: 20,
                      width: 20,
                      color: Color(0xffDD3636),
                    ),
                  ),
                  label: 'یادداشت ها',
                  tooltip: '',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SvgPicture.asset(
                      'assets/images/saves.svg',
                      height: 20,
                      width: 20,
                      color: Color(0xff888888),
                    ),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SvgPicture.asset(
                      'assets/images/saves.svg',
                      height: 20,
                      width: 20,
                      color: Color(0xffDD3636),
                    ),
                  ),
                  label: 'ذخیره ها',
                  tooltip: '',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SvgPicture.asset(
                      'assets/images/home.svg',
                      height: 20,
                      width: 20,
                      color: Color(0xff888888),
                    ),
                  ),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SvgPicture.asset(
                      'assets/images/home.svg',
                      height: 20,
                      width: 20,
                      color: Color(0xffDD3636),
                    ),
                  ),
                  label: 'خانه',
                  tooltip: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector DividerCat(String icon, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(_createRoute());
      },
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: Color(0xffECF1F8),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/$icon',
                      height: 20,
                      color: Color(0xff354052),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '$text',
                      style: TextStyle(
                        fontFamily: 'YekanLight',
                        fontSize: 22,
                        color: Color(0xff354052),
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  'assets/images/arrow-div.svg',
                  height: 10,
                  color: Color(0xff354052),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Animation of going to the next page

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const SettingsScreen(),
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

  onTap(int index) {
    setState(
      () {
        _currentIndex = index;
        _title = titles[index];
      },
    );
  }
}
