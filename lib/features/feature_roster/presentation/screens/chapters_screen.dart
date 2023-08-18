import 'package:bank_ghavanin/core/params/selecteed_item_in_chapter.dart';
import 'package:bank_ghavanin/core/routes/app_pages.dart';
import 'package:bank_ghavanin/features/feature_roster/presentation/controller/booke_roster_controller.dart';
import 'package:bank_ghavanin/features/feature_roster/presentation/controller/mavad_list_chapter_contoller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChaptersScreen extends StatefulWidget {
  const ChaptersScreen({Key? key}) : super(key: key);

  @override
  State<ChaptersScreen> createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<ChaptersScreen> {

  bool onTapLike = true;

  @override
  Widget build(BuildContext context) {
    var bookRosterController=Get.find<BookRosterController>();

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
                    bookRosterController.superBookTitleInChapters.value,
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
                  itemCount: bookRosterController.subBooks.length,
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
                                            bookRosterController.subBooks[index].title!,
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
                                      SelectedItemInChapter.rosterId =  bookRosterController.subBooks[index].id!;
                                      SelectedItemInChapter.chapterTitle =  bookRosterController.subBooks[index].title!;

                                           Get.find<MavadListChapterController>().getMavadListChapterData(rosterId: SelectedItemInChapter.rosterId,chaptersTitle: SelectedItemInChapter.chapterTitle);
                                           Get.toNamed(AppRoutes.RouteMavadListChapter);
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
