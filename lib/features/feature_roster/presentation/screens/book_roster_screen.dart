
import 'package:bank_ghavanin/core/params/selected_book_in_rooster.dart';
import 'package:bank_ghavanin/features/feature_roster/presentation/widgets/super_book_list_tab.dart';
import 'package:bank_ghavanin/features/feature_roster/presentation/widgets/mavad_list_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controller/booke_roster_controller.dart';

class BookRosterScreen extends StatefulWidget {
  const BookRosterScreen({Key? key}) : super(key: key);

  @override
  State<BookRosterScreen> createState() => _BookRosterScreenState();
}

class _BookRosterScreenState extends State<BookRosterScreen>
    with SingleTickerProviderStateMixin {
  bool onTapForColor = false;
  var bookRosterController = Get.find<BookRosterController>();


  @override
  Widget build(BuildContext context) {

    return  Obx(
      ()=> Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70.0),
              child: Column(
                children: [
                  Spacer(),

                  /// AppBar
                  AppBar(
                    title: Text(
                      bookRosterController.bookTitleInRoster.value,
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: 'YekanBold',
                        fontSize: 20,
                      ),
                    ),
                    centerTitle: true,
                    elevation: 0,
                    backgroundColor: Color(0xffFFFFFF),
                    actions: [
                      /// Back IconButton
                      IconButton(
                        icon: SvgPicture.asset(
                          'assets/images/arrow.svg',
                          height: 20,
                          width: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.white,
            body: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  /// TabBar
                  DefaultTabController(
                    length: 2, // length of tabs
                    initialIndex: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        /// List of TabBar
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: TabBar(
                              onTap: (value) {
                                setState(() {
                                  onTapForColor = !onTapForColor;
                                });
                              },
                              indicator: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                color: Color(0xff354052),
                              ),
                              tabs: [
                                Tab(
                                  child: Text(
                                    'فهرست',
                                    style: TextStyle(
                                      fontFamily: 'YekanLight',
                                      fontSize: 16,
                                      color: onTapForColor
                                          ? const Color(0xff354052)
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'مواد',
                                    style: TextStyle(
                                      fontFamily: 'YekanLight',
                                      fontSize: 16,
                                      color: onTapForColor
                                          ? Colors.white
                                          : const Color(0xff354052),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        /// Tab Screens
                        Container(
                          height: MediaQuery.of(context).size.height * .8219,
                          child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              /// List Screen
                            // bookRosterController.loading==false ?
                            ListScreen(),
                            // Center(child: CircularProgressIndicator()),


                              /// Article Screen
                              MavadScreen(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );

  }
}
