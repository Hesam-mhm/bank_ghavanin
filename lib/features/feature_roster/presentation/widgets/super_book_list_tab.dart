import 'package:bank_ghavanin/features/feature_roster/presentation/controller/booke_roster_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/params/selected_book_in_book_roster.dart';
import '../../../../core/routes/app_pages.dart';

/// List screen
class ListScreen extends StatefulWidget {

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  bool onTapLike = true;
  var  bookRosterController = Get.find<BookRosterController>() ;
  @override


  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),

                /// Builder for ListItem Container
                SizedBox(
                  height: MediaQuery.of(context).size.height * .798,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: bookRosterController.superBooks.length ,
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
                                            bookRosterController.superBooks[index].title!  ,
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
                                                bookRosterController.superBooks[index].description!,
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
                                        SelectedBookInBookRoster.superBookId= bookRosterController.superBooks[index].id!;
                                        SelectedBookInBookRoster.superBookTitle= bookRosterController.superBooks[index].title!;
                                        bookRosterController.getSubBookByParentId(superBookId: SelectedBookInBookRoster.superBookId,superBookTitle: SelectedBookInBookRoster.superBookTitle);
                                        Get.toNamed(AppRoutes.RouteChapters);
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
