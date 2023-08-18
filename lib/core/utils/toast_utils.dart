// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../constants/constants.dart';
//
// enum ToastyType {
//   success,
//   information,
//   warning,
//   error,
// }
//
// class ToastUtils {
//   static final ToastUtils _toastUtils = ToastUtils._internal();
//
//   factory ToastUtils() {
//     return _toastUtils;
//   }
//
//   static void showSnackBar({
//     toastType = ToastyType.success,
//     msgSuccess = 'اطلاعات شما با موفقیت ثبت شد',
//     msgInfo = 'پرونده به در حال اجرا انتقال یافت',
//     msgError = 'email or password is wrong',
//   }) {
//     switch (toastType) {
//       case ToastyType.success:
//         Get.rawSnackbar(
//             snackPosition: SnackPosition.TOP,
//             margin: const EdgeInsets.all(5),
//             borderWidth: 2,
//             borderColor: kBGToastDarkGreen,
//             borderRadius: 15,
//             messageText: Container(
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
//                 child: Row(
//                   textDirection: TextDirection.rtl,
//                   children: [
//                     Container(
//                         decoration: BoxDecoration(color: kBGToastDarkGreen, borderRadius: BorderRadius.circular(12)),
//                         padding: const EdgeInsets.all(6),
//                         child: Container(
//                             decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
//                             child: const Icon(
//                               Icons.check,
//                               color: kBGToastDarkGreen,
//                             ))),
//                     const SizedBox(
//                       width: 12,
//                     ),
//                     Expanded(
//                         child: Text(
//                       msgSuccess,
//                       style: iransans12BoldLightBlack,
//                       textDirection: TextDirection.rtl,
//                       maxLines: 1,
//                     )),
//                   ],
//                 )),
//             backgroundColor: kBGToastLightGreen.withOpacity(0.9),
//             barBlur: 1.0);
//         break;
//       case ToastyType.information:
//         Get.rawSnackbar(
//             snackPosition: SnackPosition.TOP,
//             margin: const EdgeInsets.all(5),
//             borderWidth: 2,
//             borderColor: Colors.blueAccent,
//             borderRadius: 15,
//             messageText: Container(
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
//                 child: Row(
//                   textDirection: TextDirection.rtl,
//                   children: [
//                     Flexible(
//                         flex: 2,
//                         child: Container(
//                             decoration: BoxDecoration(color: kBGToastDarkBlue, borderRadius: BorderRadius.circular(12)),
//                             padding: const EdgeInsets.all(6),
//                             child: Container(
//                                 decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
//                                 child: const Icon(
//                                   Icons.priority_high_outlined,
//                                   color: kBGToastDarkBlue,
//                                 )))),
//                     Flexible(
//                       flex: 1,
//                       child: Container(),
//                     ),
//                     Flexible(
//                         flex: 4,
//                         child: Text(
//                           msgInfo,
//                           style: iransans12BoldLightBlack,
//                           textDirection: TextDirection.rtl,
//                         )),
//                   ],
//                 )),
//             backgroundColor: kBGToastLightBlue.withOpacity(0.8),
//             barBlur: 1.0);
//         break;
//       case ToastyType.error:
//         Get.rawSnackbar(
//             snackPosition: SnackPosition.TOP,
//             margin: const EdgeInsets.all(5),
//             borderWidth: 2,
//             borderColor: Colors.blueAccent,
//             borderRadius: 15,
//             messageText: Container(
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
//                 child: Row(
//                   textDirection: TextDirection.rtl,
//                   children: [
//                     Flexible(
//                         flex: 2,
//                         child: Container(
//                             decoration: BoxDecoration(color: kBGToastDarkBlue, borderRadius: BorderRadius.circular(12)),
//                             padding: const EdgeInsets.all(6),
//                             child: Container(
//                                 decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
//                                 child: const Icon(
//                                   Icons.error_outline,
//                                   color: kBGToastDarkBlue,
//                                 )))),
//                     Flexible(
//                       flex: 1,
//                       child: Container(),
//                     ),
//                     Flexible(
//                         flex: 3,
//                         child: Text(
//                           msgError,
//                           style: iransans12BoldLightBlack,
//                           textDirection: TextDirection.rtl,
//                         )),
//                   ],
//                 )),
//             backgroundColor: Colors.red.withOpacity(0.8),
//             barBlur: 1.0);
//     }
//   }
//
//   ToastUtils._internal();
// }
