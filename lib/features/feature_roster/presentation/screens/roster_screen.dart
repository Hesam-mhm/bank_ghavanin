import 'package:bank_ghavanin/core/params/selected_book_in_rooster.dart';
import 'package:bank_ghavanin/core/routes/app_pages.dart';
import 'package:bank_ghavanin/core/utils/api_color_to_hex.dart';
import 'package:bank_ghavanin/features/feature_roster/presentation/controller/booke_roster_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/params/selected_category_in_home.dart';
import '../controller/roster_controller.dart';

class RosterScreen extends StatefulWidget {
  const RosterScreen({Key? key}) : super(key: key);


  @override
  State<RosterScreen> createState() => _RosterScreenState();
}

class _RosterScreenState extends State<RosterScreen> {
  var rosterController = Get.find<RosterController>();

  String TapToExpandIt = 'Tap to Expand it';
  String Sentence = 'Widgets that have global keys reparent their subtrees when'
      ' they are moved from one location in the tree to another location in the'
      ' tree. In order to reparent its subtree, a widget must arrive at its new'
      ' location in the tree in the same animation frame in which it was removed'
      ' from its old location the tree.'
      ' Widgets that have global keys reparent their subtrees when they are moved'
      ' from one location in the tree to another location in the tree. In order'
      ' to reparent its subtree, a widget must arrive at its new location in the'
      ' tree in the same animation frame in which it was removed from its old'
      ' location the tree.';
  bool isExpanded = true;
  bool isExpanded2 = true;
  bool onTapLike = false;
  // RxBool onTapLike =RxBool(false); 


  @override
  Widget build(BuildContext context) {
    return Obx(() => rosterController.loading.value == false
        ? Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
                backgroundColor: Colors.white,
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(70.0),
                  child: Column(
                    children: [
                      Spacer(),
                      AppBar(

                        title: Text(
                          'بانک قوانین',
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
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: SelectedCataegoryInHome.color.toColor(),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  " قوانین و مقررات ${rosterController.mainTilteName.toString()}",
                                  style: TextStyle(
                                    fontFamily: 'YekanBold',
                                    fontSize: 20,
                                    color: Color(0xff354052),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: rosterController.pageItemslist.length,
                            itemBuilder: (context, index) {
                              return AnimatedContainer(
                                margin: EdgeInsets.symmetric(
                                  horizontal: isExpanded ? 0 : 0,
                                  vertical: 20,
                                ),
                                height: isExpanded ? 95 : 300,
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: Duration(milliseconds: 1200),
                                decoration: BoxDecoration(
                                  color: Color(0xffF5F8FD),
                                  border: Border.all(
                                    color: Color(0xffA2AFC3),
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              /// تایتل و دکمه favrite
                                              Row(
                                                children: [
                                                  Text(
                                                    rosterController
                                                        .pageItemslist[index]
                                                        .title!,
                                                    style: TextStyle(
                                                      fontFamily: 'YekanBold',
                                                      fontSize: 20,
                                                      color: Color(0xff354052),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            isExpanded =!
                                                                isExpanded;
                                                          });
                                                        },
                                                        child: Icon(
                                                          Icons.info_outline,
                                                          color:
                                                              Color(0xff354052),
                                                          size: 20,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            onTapLike=!onTapLike;
                                                            if (onTapLike == true) {
                                                              rosterController
                                                                  .postFavorite(index);
                                                            rosterController.saveList.add(rosterController.pageItemslist[index]);
                                                            } else {
                                                              rosterController
                                                                  .deleteFavorite(index);
                                                            }
                                                          });
                                                        },
                                                        child: SvgPicture.asset(
                                                          onTapLike
                                                              ? 'assets/images/like.svg'
                                                              : 'assets/images/like-outline.svg',
                                                          height: 15,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),

                                              Column(
                                                children: [
                                                  /// تاریخ تصویب و دکمه مشاهده
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                'تاریخ تصویب:',
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'YekanLight',
                                                                  fontSize: 15,
                                                                  color: Color(
                                                                      0xff667998),
                                                                ),
                                                              ),
                                                              Text(
                                                                rosterController
                                                                    .pageItemslist[
                                                                        index]
                                                                    .passageDate!,
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'YekanLight',
                                                                  fontSize: 15,
                                                                  color: Color(
                                                                      0xff667998),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          SelectedBookInRoster.bookId = rosterController.pageItemslist[index].id!;
                                                          SelectedBookInRoster.bookTitle = rosterController.pageItemslist[index].title!;
                                                          Get.find<BookRosterController>().getBookRosterData(bookId:  SelectedBookInRoster.bookId,bookTitle:  SelectedBookInRoster.bookTitle);
                                                          Get.toNamed(AppRoutes.RouteBookRoster);
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Text('مشاهده',
                                                              style: TextStyle(
                                                                fontFamily: 'YekanLight',
                                                                fontSize: 16,
                                                                color: Color(0xff354052),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 2,
                                                            ),
                                                            SvgPicture.asset(
                                                              'assets/images/arrow.svg',
                                                              height: 12,
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      AnimatedCrossFade(
                                        firstChild: Text(
                                          '',
                                          style: TextStyle(
                                            fontSize: 0,
                                          ),
                                        ),
                                        secondChild: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'باقی اطلاعات:',
                                              style: TextStyle(
                                                fontFamily: 'YekanLight',
                                                fontSize: 18,
                                                color: Color(0xff354052),
                                              ),
                                            ),

                                            /// سطر اول
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'تصویب کننده:',
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 15,
                                                    color: Color(0xff667998),
                                                  ),
                                                ),
                                                Text(
                                                  rosterController
                                                      .pageItemslist[index]
                                                      .approvalAuthority!,
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 16,
                                                    color: Color(0xff667998),
                                                  ),
                                                )
                                              ],
                                            ),

                                            /// سطر دوم
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'شماره اطلاعیه:',
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 15,
                                                    color: Color(0xff667998),
                                                  ),
                                                ),
                                                Text(
                                                  rosterController
                                                      .pageItemslist[index]
                                                      .notificationNumber!,
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 16,
                                                    color: Color(0xff667998),
                                                  ),
                                                )
                                              ],
                                            ),

                                            /// سطر سوم
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'تاریخ اطلاعیه:',
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 15,
                                                    color: Color(0xff667998),
                                                  ),
                                                ),
                                                Text(
                                                  rosterController
                                                      .pageItemslist[index]
                                                      .notificationDate!,
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 16,
                                                    color: Color(0xff667998),
                                                  ),
                                                )
                                              ],
                                            ),

                                            /// سطر چهارم
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'مقام تصویب کننده:',
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 15,
                                                    color: Color(0xff667998),
                                                  ),
                                                ),
                                                Text(
                                                  rosterController
                                                      .pageItemslist[index]
                                                      .notificationAuthority!,
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 16,
                                                    color: Color(0xff667998),
                                                  ),
                                                )
                                              ],
                                            ),

                                            /// سطر ششم
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'تاریخ پیاده سازی:',
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 15,
                                                    color: Color(0xff667998),
                                                  ),
                                                ),
                                                Text(
                                                  rosterController
                                                      .pageItemslist[index]
                                                      .implementationDate!,
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 16,
                                                    color: Color(0xff667998),
                                                  ),
                                                )
                                              ],
                                            ),

                                            /// سطر هفتم
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'شماره روزنامه رسمی:',
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 15,
                                                    color: Color(0xff667998),
                                                  ),
                                                ),
                                                Text(
                                                  rosterController
                                                      .pageItemslist[index]
                                                      .officialGazetteNo!,
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 16,
                                                    color: Color(0xff667998),
                                                  ),
                                                )
                                              ],
                                            ),

                                            /// سطر هشتم
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'تاریخ روزنامه رسمی:',
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 15,
                                                    color: Color(0xff667998),
                                                  ),
                                                ),
                                                Text(
                                                  rosterController
                                                      .pageItemslist[index]
                                                      .officialGazetteDate!,
                                                  style: TextStyle(
                                                    fontFamily: 'YekanLight',
                                                    fontSize: 16,
                                                    color: Color(0xff667998),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        crossFadeState: isExpanded
                                            ? CrossFadeState.showFirst
                                            : CrossFadeState.showSecond,
                                        duration: Duration(milliseconds: 1200),
                                        reverseDuration: Duration.zero,
                                        sizeCurve:
                                            Curves.fastLinearToSlowEaseIn,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          )
        : Container(
            color: Colors.white,
          ));
  }

  GestureDetector DividerCat(String icon, String text) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(_createRoute());
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
}
