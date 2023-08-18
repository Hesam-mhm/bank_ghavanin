import 'package:bank_ghavanin/features/feature_text/presentation/controller/text_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TextScreen extends StatelessWidget {
  static const Type className = TextScreen;
  var textController  = Get.find<TextController>();

  TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=>textController.loading.value==false?
       Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70.0),
              child: Column(
                children: [
                  Spacer(),

                  /// AppBar
                  AppBar(
                    title: Text(
                      textController.mainTilteName.value,
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
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// body
            body: textController.scrollHorizontal.value
                ? PageView.builder(
                    scrollDirection: textController.scrollHorizontal.value
                        ? Axis.horizontal
                        : Axis.vertical,
                    itemCount: 3,
              controller: textController.pageController.value,
              itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              /// Title for Article's Data
                              Container(
                                height: Get.height * 0.08,
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
                                      horizontal: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      /// Title
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          /// Title and description
                                          Text(
                                            // '${index + 1}تایتل',
                                            textController.myTextentity.value.responseData!.resultData!.title!,
                                            style: TextStyle(
                                              fontFamily: 'YekanBold',
                                              fontSize: 20,
                                              color: Color(0xff354052),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          /// Notes Text and Icon
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'یادداشت',
                                                style: TextStyle(
                                                  fontFamily: 'YekanLight',
                                                  fontSize: 15,
                                                  color: Color(0xff354052),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              SvgPicture.asset(
                                                'assets/images/notes.svg',
                                                height: 15,
                                                color: Color(0xff354052),
                                              ),
                                            ],
                                          ),

                                          SizedBox(
                                            width: 15,
                                          ),

                                          /// Favorite Icon
                                          GestureDetector(
                                            onTap: () {
                                              // setState(() {
                                              //   onTapLike = !onTapLike;
                                              // });
                                            },
                                            child: SvgPicture.asset(
                                              'assets/images/like-outline.svg',
                                              // onTapLike
                                              //     ? 'assets/images/like-outline.svg'
                                              //     : 'assets/images/like.svg',
                                              height: 15,
                                              color: Color(0xff354052),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              /// Description
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: Get.height * 0.7,
                                    child: Container(
                                      color: Colors.white,
                                      child: SingleChildScrollView(
                                        physics: BouncingScrollPhysics(),
                                        child: Text(
                                          textController.myTextentity.value.responseData!.resultData!.description!,
                                          style: TextStyle(
                                            fontFamily: 'YekanLight',
                                            fontSize: 15,
                                            color: Color(0xff354052),
                                            height: 1.8,
                                            wordSpacing: 1.8,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              /// Title for Article's Data
                              Container(
                                height: Get.height * 0.08,
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
                                      horizontal: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      /// Title
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          /// Title and description
                                          Text(
                                            textController.myTextentity.value.responseData!.resultData!.title!,
                                            textDirection: TextDirection.ltr,
                                            style: TextStyle(
                                              fontFamily: 'YekanBold',
                                              fontSize: 20,
                                              color: Color(0xff354052),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          /// Notes Text and Icon
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'یادداشت',
                                                style: TextStyle(
                                                  fontFamily: 'YekanLight',
                                                  fontSize: 15,
                                                  color: Color(0xff354052),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              SvgPicture.asset(
                                                'assets/images/notes.svg',
                                                height: 15,
                                                color: Color(0xff354052),
                                              ),
                                            ],
                                          ),

                                          SizedBox(
                                            width: 15,
                                          ),

                                          /// Favorite Icon
                                          GestureDetector(
                                            onTap: () {
                                              // setState(() {
                                              //   onTapLike = !onTapLike;
                                              // });
                                            },
                                            child: SvgPicture.asset(
                                              'assets/images/like-outline.svg',
                                              // onTapLike
                                              //     ? 'assets/images/like-outline.svg'
                                              //     : 'assets/images/like.svg',
                                              height: 15,
                                              color: Color(0xff354052),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              /// Description
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    color: Colors.white,
                                    child: SingleChildScrollView(
                                      physics: BouncingScrollPhysics(),
                                      child: Text(
                                            textController.myTextentity.value.responseData!.resultData!.description!,
                                        style: TextStyle(
                                          fontFamily: 'YekanLight',
                                          fontSize: 15,
                                          color: Color(0xff354052),
                                          height: 1.8,
                                          wordSpacing: 1.8,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

            /// btm nav
            bottomNavigationBar: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: const Color(0xffc6ccd5),
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    /// Icon 1
                    SvgPicture.asset(
                      'assets/images/next.svg',
                      // onTapLike
                      //     ? 'assets/images/like-outline.svg'
                      //     : 'assets/images/like.svg',
                      height: 15,
                    ),

                    /// Icon 2
                    SvgPicture.asset(
                      'assets/images/pre.svg',
                      // onTapLike
                      //     ? 'assets/images/like-outline.svg'
                      //     : 'assets/images/like.svg',
                      height: 15,
                    ),

                    /// Icon 3
                    SvgPicture.asset(
                      'assets/images/btn1.svg',
                      // onTapLike
                      //     ? 'assets/images/like-outline.svg'
                      //     : 'assets/images/like.svg',
                      height: 11,
                    ),

                    /// Icon 4
                    InkWell(
                      onTap: () {
                        textController.scrollHorizontal.value =
                            !textController.scrollHorizontal.value;
                      },
                      child: SvgPicture.asset(
                        'assets/images/btn2.svg',
                        // onTapLike
                        //     ? 'assets/images/like-outline.svg'
                        //     : 'assets/images/like.svg',
                        height: 15,
                      ),
                    ),

                    /// Icon 5
                    SvgPicture.asset(
                      'assets/images/btn3.svg',
                      // onTapLike
                      //     ? 'assets/images/like-outline.svg'
                      //     : 'assets/images/like.svg',
                      height: 19,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ):Center(child: CircularProgressIndicator(color: Colors.white,))
    );

  }
}
