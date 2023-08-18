import 'package:bank_ghavanin/core/params/selecteed_item_in_chapter.dart';
import 'package:bank_ghavanin/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../controller/mavad_list_chapter_contoller.dart';

class MavadListChapterScreen extends StatefulWidget {
  const MavadListChapterScreen({Key? key}) : super(key: key);

  @override
  State<MavadListChapterScreen> createState() => _MavadListChapterScreenState();
}

class _MavadListChapterScreenState extends State<MavadListChapterScreen> {
  bool onTapLike = true;

  @override
  Widget build(BuildContext context) {
    var mavadListChapterController=Get.find<MavadListChapterController>();

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Obx(
            ()=> Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(65.0),
            child: Column(
              children: [
                Spacer(),
                /// AppBar
                AppBar(
                  title: Text(
                    "",
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
          body: Column(
            children: [
              /// Builder for ListItem Container
              SizedBox(
                height: MediaQuery.of(context).size.height * .87999,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mavadListChapterController.allMavadOfThisChapter.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              color: Color(0xffF5F8FD),
                              border: Border.all(
                                width: 1,
                                color: const Color(0xff354052),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  /// Title
                                  Row(
                                    children: [
                                      /// Favorite Icon
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            onTapLike = !onTapLike;
                                          });
                                        },
                                        child: SvgPicture.asset(
                                          onTapLike
                                              ? 'assets/images/like-outline.svg'
                                              : 'assets/images/like.svg',
                                          height: 15,
                                        ),
                                      ),

                                      SizedBox(
                                        width: 10,
                                      ),

                                      /// Title and description
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          /// Title
                                          Text(
                                      mavadListChapterController.allMavadOfThisChapter[index].title!,
                                            style: TextStyle(
                                              fontFamily: 'YekanBold',
                                              fontSize: 20,
                                              color: Color(0xff354052),
                                            ),
                                          ),

                                          /// Description
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height *
                                                0.02,
                                            child: Text(
                                              'توضیحات',
                                              style: TextStyle(
                                                fontFamily: 'YekanLight',
                                                fontSize: 15,
                                                color: Color(0xff354052),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  ///  Navigation Button
                                  GestureDetector(
                                    onTap: () {
                                      SelectedItemInChapter.rosterId = mavadListChapterController.allMavadOfThisChapter[index].id! ;
                                      SelectedItemInChapter.chapterTitle = mavadListChapterController.allMavadOfThisChapter[index].title! ;
                                      Get.toNamed(AppRoutes.RouteText);
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          'مشاهده',
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

