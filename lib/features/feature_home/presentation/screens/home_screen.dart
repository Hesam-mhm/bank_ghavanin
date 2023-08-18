import 'package:bank_ghavanin/core/params/selected_category_in_home.dart';
import 'package:bank_ghavanin/core/routes/app_pages.dart';
import 'package:bank_ghavanin/core/utils/api_color_to_hex.dart';
import 'package:bank_ghavanin/features/feature_home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../feature_roster/presentation/screens/roster_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    homeController.getHomeCategories();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 35.0,
              right: 35.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                continueReading(),
                SizedBox(
                  height: 20,
                ),
                Obx(()=> categorys(height)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column categorys( height) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/category.svg',
              height: 12,
              width: 20,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'دسته بندی قوانین و مقررات',
              style: TextStyle(
                fontFamily: 'YekanBold',
                fontSize: 18,
                color: Color(0xff000000),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),

        // first show loading before grid
        homeController.loading.value ?
        CircularProgressIndicator():
        GridView.builder(
            primary: false,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: homeController.falseShowListCategory.length,
            itemBuilder: (BuildContext context, int index) {
              return   categoryItem(
                  hexBackground:  homeController.falseShowListCategory[index].backgroundColor! ,
                  title: homeController.falseShowListCategory[index].title!,
                  hexMoshahede:  homeController.falseShowListCategory[index].color!,
                 categoryId: homeController.falseShowListCategory[index].id!,
                 categoryTitle: homeController.falseShowListCategory[index].title!,
                categoryColor: homeController.falseShowListCategory[index].backgroundColor!
              );

            },
              // homeController.falseShowListCategory[index].title!
          ),

        SizedBox(
          height: 20,
        ),


        ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: homeController.trueShowListCategory.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 65,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color:homeController.trueShowListCategory[index].backgroundColor!.toColor(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Text(
                             homeController.trueShowListCategory[index].title!,
                              style: TextStyle(
                                fontFamily: 'YekanBold',
                                fontSize: 20,
                                color: Color(0xff354052),
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'مشاهده',
                                    style: TextStyle(
                                      fontFamily: 'YekanLight',
                                      fontSize: 16,
                                      color: homeController.trueShowListCategory[index].color!.toColor(),
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
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              );
            },

          ),

        SizedBox(
          height: 10,
        )
      ],
    );
  }

  Container
  categoryItem({
    required String hexBackground,
    required String title,
    required String hexMoshahede,
    required int categoryId,
    required String categoryTitle,
    required String categoryColor,

  }) {
    return Container(
      decoration: BoxDecoration(
        color: hexBackground.toColor(),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'قوانین و مقررات',
                  style: TextStyle(
                    fontFamily: 'YekanLight',
                    fontSize: 12,
                    color: Color(0xff687487),
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'YekanBold',
                      fontSize: 20,
                      color: Color(0xff354052),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () {
                SelectedCataegoryInHome.categoryId = categoryId ;
                SelectedCataegoryInHome.categoryTitle = categoryTitle;
                SelectedCataegoryInHome.color = categoryColor;
                   Get.toNamed(AppRoutes.RouteRoster);                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => RosterScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'مشاهده',
                    style: TextStyle(
                      fontFamily: 'YekanLight',
                      fontSize: 16,
                      color: hexMoshahede.toColor(),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  SvgPicture.asset(
                    'assets/images/arrow.svg',
                    height: 12,
                    color: hexMoshahede.toColor(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget continueReading() {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/preview.svg',
              height: 20,
              width: 20,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'به خواندن ادامه دهید',
              style: TextStyle(
                fontFamily: 'YekanBold',
                fontSize: 18,
                color: Color(0xff000000),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffECF1F8),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'قانون مدنی',
                      style: TextStyle(
                        fontFamily: 'YekanBold',
                        fontSize: 16,
                        color: Color(0xff354052),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: Text(
                        'ماده - 1 مصوبات مجلس شورای اسلامی و نتیجه ی همه پرسی پس از طی مراحل قانونی و رئیس جمهور ابلاغ می شود و...',
                        style: TextStyle(
                          fontFamily: 'YekanLight',
                          fontSize: 14,
                          color: Color(0xff354052),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'ادامه',
                        style: TextStyle(
                          fontFamily: 'YekanBold',
                          fontSize: 14,
                          color: Color(0xff354052),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      SvgPicture.asset(
                        'assets/images/arrow.svg',
                        height: 10,
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
