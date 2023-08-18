import 'package:bank_ghavanin/core/params/selecteed_item_in_chapter.dart';
import 'package:bank_ghavanin/core/routes/app_pages.dart';
import 'package:bank_ghavanin/features/feature_roster/presentation/controller/booke_roster_controller.dart';
import 'package:bank_ghavanin/features/feature_roster/presentation/controller/mavad_roster_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

/// Article screen
class MavadScreen extends StatefulWidget {


  @override
  State<MavadScreen> createState() => _MavadScreenState();
}

class _MavadScreenState extends State<MavadScreen> {
  bool onTapLike = true;
  String subTitle =
      '''لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.''';
  var  mavadRosterController = Get.find<MavadRosterController>() ;


  @override
  Widget build(BuildContext context) {
    return Container(
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
                itemCount: mavadRosterController.allMavad.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.16,
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      /// Title
                                      Text(
                                        mavadRosterController.allMavad[index].title!,
                                        style: TextStyle(
                                          fontFamily: 'YekanBold',
                                          fontSize: 20,
                                          color: Color(0xff354052),
                                        ),
                                      ),
                                      Spacer(),

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
                                    ],
                                  ),

                                  /// Description
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    child: Text(
                                      subTitle,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'YekanLight',
                                        fontSize: 15,
                                        color: Color(0xff354052),
                                        height: 1.8,
                                        wordSpacing: 1.8,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                         SelectedItemInChapter.rosterId =   mavadRosterController.allMavad[index].rosterId!;
                         SelectedItemInChapter.chapterTitle =   mavadRosterController.allMavad[index].title!;
                         Get.toNamed(AppRoutes.RouteText);
                          },
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
    );
  }
}
