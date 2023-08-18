import 'package:bank_ghavanin/core/routes/app_pages.dart';
import 'package:bank_ghavanin/features/feature_auth/presentation/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffDD3636),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logoBank.png',
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'بانک قوانین',
                                style: TextStyle(
                                  fontFamily: 'YekanBold',
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'بانک جامع قوانین و مقررات کشور',
                                style: TextStyle(
                                  fontFamily: 'YekanLight',
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
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
            flex: 3,
            child: Container(
              color: Colors.white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: PinCodeTextField(
                              autoDisposeControllers: false,
                              controller: authController.codeTextEditingController,
                              appContext: context,
                              animationType: AnimationType.scale,
                              keyboardType: TextInputType.number,
                              length: 5,
                              enableActiveFill: true,
                              onChanged: (value) {},
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderWidth: 1,
                                borderRadius: BorderRadius.circular(15),
                                fieldHeight: 60,
                                fieldWidth: 50,
                                inactiveFillColor: Color(0xffF8FBFF),
                                selectedFillColor: Color(0xffF8FBFF),
                                inactiveColor: Color(0xffA2AFC3),
                                activeColor: Color(0xff4DAA63),
                                selectedColor: Color(0xffA2AFC3),
                                activeFillColor: Color(0xffF8FBFF),
                                errorBorderColor: Colors.red,
                              ),
                              // controller: controller.ctrlCode,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                        authController.getLoginData();
                         //TODO روت صفحه در کنترلر تنظیم شود
                         Get.offAllNamed(AppRoutes.RouteHome);
                         },
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff4DAA63),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'ورود',
                              style: TextStyle(
                                fontFamily: 'YekanBold',
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
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
    );
  }

  // Route _createRoute() {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) => const MainView(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(1.0, 0.0);
  //       const end = Offset.zero;
  //       const curve = Curves.ease;
  //
  //       var tween =
  //       Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //
  //       return SlideTransition(
  //         position: animation.drive(tween),
  //         child: child,
  //       );
  //     },
  //   );
  // }
}
