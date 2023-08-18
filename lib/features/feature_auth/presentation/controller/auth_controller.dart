import 'dart:developer';
import 'package:bank_ghavanin/core/routes/app_pages.dart';
import 'package:bank_ghavanin/features/feature_auth/domain/entities/login_entity.dart';
import 'package:bank_ghavanin/features/feature_auth/domain/entities/otp_entity.dart';
import 'package:bank_ghavanin/features/feature_auth/domain/usecase/login_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../core/resources/data_state.dart';
import '../../domain/usecase/call_otp_usecase.dart';

class AuthController extends GetxController{
  LoginUsecase loginUsecase ;
  CallOtpUsecase callOtpUsecase ;

  AuthController({required this.loginUsecase,required this.callOtpUsecase});

  TextEditingController mobileTextEditingController = TextEditingController();
  TextEditingController codeTextEditingController = TextEditingController();

  Rx<String> token = "".obs ;
  Rx<String> mobile = "".obs ;
  Rx<String> activeCode = "".obs ;
  Rx<OtpEntity> myOtpEntity = OtpEntity().obs ;
  Rx<LoginEntity> myLoginEntity = LoginEntity().obs ;


  sendPhoneNumberToGetOtp() async{
    Map<String,dynamic> map = {
      "mobile" : mobileTextEditingController.text.toString()
    };
   DataState dataState = await callOtpUsecase.call(map);
   if(dataState is DataSuccess){
      OtpEntity otpEntity = dataState.data;
      myOtpEntity.value = otpEntity ;

   }
   if(dataState is DataFailed){
     print(dataState.error);
   }

  }

 Future<void> getLoginData() async{
    Map<String,dynamic> map = {
      "mobile" : mobileTextEditingController.text ,
      "code" : codeTextEditingController.text
    };
    DataState dataState = await loginUsecase.call(map);
    if(dataState is DataSuccess){
      LoginEntity loginEntity = dataState.data;
      myLoginEntity.value = loginEntity ;


      if(myLoginEntity.value .responseData!.resultData != null){
        token.value = loginEntity.responseData!.resultData!.token!;}

      // if(myLoginEntity.value.responseData!.statusCode==200){
      //   // Get.offAllNamed(AppRoutes.RouteHome);
      // }

      print ("token is" + token.toString());
    }
    if(dataState is DataFailed){
      print(dataState.error);
    }
  }
}