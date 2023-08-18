import 'package:flutter/material.dart';

const String kBaseUrl = "http://82.99.217.250:8057";

const int kConnectTimeout = 50000;
const int kReceiveTimeout = 50000;

const String kUnknownInputCast = "Unknown Input Cast";
const String faPrimaryFontFamily = 'iransans';

// region <<< Crane >>>
const kColorOffWhite = Color(0xffF6F6F8);
const kColorDarkGray = Color(0xff303030);
const kColorGray = Color(0xff707070);
const kColorGray2 = Color(0xff505050);
const kColorGray3 = Color(0xffE5E5E5);
const kColorGray4 = Color(0xff909090);
const kColorGray5 = Color(0xffD2D1D1);
const kColorYellow = Color(0xffFBCC34);
const kColorGreen = Color(0xff43CF53);
const kColorGreen2 = Color(0xff85CFAD);
const kColorPurple = Color(0xff5F5CF6);
const kColorOffPurple = Color(0xffBDBDED);
const kColorOffPurple2 = Color(0xffF2F1FE);
const kColorRed = Color(0xffF24A37);
const kBGToastDarkGreen = Color(0xff3eBE61);
const textLightBlackColor = Color(0xff505050);
const kBGToastLightGreen = Color(0xffEBF7EE);
const kBGToastDarkBlue = Color(0xff006ce4);
const kBGToastLightBlue = Color(0xffE5EFFA);
const kPurple = Color(0xff5855C6);
const veryLightPurple = Color(0xffDAD9F2);

const kLoginTextfieldDecoration = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(30.0),
  ),
  borderSide: BorderSide(
    color: kColorDarkBlue,
    width: 2.0,
  ),
);

const iransans12BoldLightBlack = TextStyle(
  color: textLightBlackColor,
  fontFamily: 'iransans',
  fontWeight: FontWeight.bold,
  decoration: TextDecoration.none,
  fontSize: 16,
);
// endregion

const titleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  fontFamily: 'iransans',
  color: kColorRed,
);

const headlineTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 14,
  fontFamily: 'iransans',
  color: kColorDarkBlue,
);

const iransansBoldSize16Purple = TextStyle(
  color: Colors.white,
  fontFamily: 'iransans',
  fontWeight: FontWeight.bold,
  decoration: TextDecoration.none,
  fontSize: 16,
);

// const kMapApiKey =
//     'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjI5MjU1Zjg4ZjAzNTRkNWRlOWQzNmMxZjIxZmNjNWY3ZDNiMDFjNTdlNTE0YzVjYzg3MmQ4YTQ3NWM0YTQxYzlmNGI1NGZlOGZkMTMyZmFkIn0.eyJhdWQiOiIxMDczOCIsImp0aSI6IjI5MjU1Zjg4ZjAzNTRkNWRlOWQzNmMxZjIxZmNjNWY3ZDNiMDFjNTdlNTE0YzVjYzg3MmQ4YTQ3NWM0YTQxYzlmNGI1NGZlOGZkMTMyZmFkIiwiaWF0IjoxNTk5Mjg2MTM2LCJuYmYiOjE1OTkyODYxMzYsImV4cCI6MTYwMTk2ODEzNiwic3ViIjoiIiwic2NvcGVzIjpbImJhc2ljIl19.mw4TE_PkVWS9uIefxhqXTXtQpI1XY1cS1Uponmm68RCUXnD6tnMTCwvbu9mLnqO3SubrsuZvlhb4JR6qHLlAPlBgxFm51qxUSiMhZcA8aCAiHJVMqO_tDRDiyEhkYclc8dRPbEGM7FKE160_ke2bXL2w-iM71r2ns6LE2jqnQLD9mAO60HeVIRPjNL5LCF_prBhEWu4qSauvxpiZZMfv96hcYIDv0uxYs3pUXzzhqoIRmBAm1XUN4v2jr_-4Gnq71Z4DEudl36hspDE0iJ3xji-8e5UGdeE4u0TdyMNS0guvmUOGGDBeT7NHrgnxArZhnRNCTX9RlrTLaGk-dcH_tg';

const kSlideTitleStyle = TextStyle(
  fontSize: 22.0,
  color: Color(0xffef353c), //kColorRedCoTop,
  fontFamily: 'iransans',
  fontWeight: FontWeight.w700,
);

const kSlideButtonsStyle = TextStyle(
  fontSize: 20.0,
  color: kSliderButtonsColor,
  fontFamily: 'iransans',
  fontWeight: FontWeight.w300,
);

const kSlideButtonsStyle2 = TextStyle(
  fontSize: 20.0,
  color: kColorPallete2,
  fontFamily: 'iransans',
  fontWeight: FontWeight.w300,
);

const kSideBarStyle = TextStyle(
  fontSize: 14,
  fontFamily: 'iransans',
  fontWeight: FontWeight.bold,
  color: kColorDarkBlue,
);

const kTextStyleForgetPass = TextStyle(
  fontFamily: 'iransans',
  fontSize: 15.0,
  color: kColorPallete6,
  fontWeight: FontWeight.w300,
);

const kSlideDescriptionStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.black45, // kColorGreyIntroText,
  fontFamily: 'iransans',
  fontWeight: FontWeight.w300,
);

const kLoginTitleStyle = TextStyle(
  fontFamily: 'iransans',
  fontSize: 18.0,
  color: Colors.grey,
  fontWeight: FontWeight.w700,
);

const kLoginTitleStyle1 = TextStyle(
  fontFamily: 'iransans',
  fontSize: 25.0,
  color: Colors.black45,
  fontWeight: FontWeight.bold,
);
const kDialog = TextStyle(
  color: kColorDarkBlue,
  fontFamily: 'iransans',
  fontSize: 12,
  fontWeight: FontWeight.bold,
);

const kLoginTitleOpacity = 0.85;

const kLoginDescriptionStyle = TextStyle(
  fontFamily: 'iransans',
  fontSize: 18.0,
  color: kLoginDescriptionColor,
  fontWeight: FontWeight.w500,
);

const kSliderButtonsColor = Color(0xff4983c4);
const kSliderDotsColor = Color(0xffc2c2c2);
const kSliderActiveDotsColor = Color(0xff4983c4); //Color(0xff8855aa);
const kColorDarkBlue = Color(0xff1C4870);
const kColorGrey = Color(0xff707070);
const kColorGreyHigh = Color(0xff4F4F4F);
const kColorGreyLight = Color(0xffcfcfd0);
const kColorDarkRed = Color(0xffB00020);
const kColorGreyPelak = Color(0xff969798);
const kColorDarkBluePelak = Color(0xff00319D);
const kColorGreySpec = Color(0xff505050);

const kColorPallete1 = Color(0xff000000);
const kColorPallete2 = Color(0xff14213d);
const kColorPallete3 = Color(0xfffca311);
const kColorPallete4 = Color(0xffe5e5e5);
const kColorPallete5 = Color(0xffd62828);
const kColorPallete6 = Color(0xff283618);
const kSplashBackground = Color(0xff79c6df);
const kColorGreyButton = Color(0xffCFCFD0);

const kColorGoogle = Color(0xffdb3236);
const kColorFacebook = Color(0xff3b5998);

const kColorBlueCoTop = Color(0xff246dc5);
const kColorBlueCoBottom = Color(0xff186491);
const kColorRedCoTop = Color(0xffc72d31);
const kColorRedCoBottom = Color(0xffd5343a);

const kColorGreyIntroTop = Color(0xffececec);
const kColorGreyIntroBottom = Color(0xffededed);

const kColorGreyIntroBack = LinearGradient(
  colors: [kColorGreyIntroTop, kColorGreyIntroBottom],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const kColorGreyIntroText = Color(0xffc2c2c2);
const kColorIntroButtonBack = Color(0xff186491);
const kColorIntroButtonText = Color(0xffffffff);
const kLoginTitleColor = Color(0xff185191);
const kLoginDescriptionColor = Color(0xff9a9a9a);

const kColorIntroButtonStyle = TextStyle(
  fontFamily: 'iransans',
  fontWeight: FontWeight.w500,
  fontSize: 18.0,
  color: kColorIntroButtonText,
  decoration: TextDecoration.none,
);

const kColorSpecBlue = Color(0xff29689F);
const kLoginBorderRadius = 5.0;
const kLoginTextPadding = 16.0;
const kLoginBorderPadding = 40.0;
const kSplashPadding = 80.0;

const kSearch = TextStyle(
  fontSize: 16,
  fontFamily: 'iransans',
  fontWeight: FontWeight.bold,
  color: kColorGreyPelak,
);

const kBazdidBorderWhite = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide(
    color: Colors.white,
    width: 1.5,
  ),
);

const kBazdidBorderBlue = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide(
    color: kColorDarkBlue,
    width: 1.5,
  ),
);

const kBazdidStyle = TextStyle(
  fontSize: 12,
  fontFamily: 'iransans',
  color: kColorSpecBlue,
  fontWeight: FontWeight.bold,
);

const kPhoneNumber = TextStyle(
  fontSize: 14,
  fontFamily: 'iransans',
  color: kColorSpecBlue,
  fontWeight: FontWeight.w400,
);

const kPlateNumber = TextStyle(
  fontWeight: FontWeight.w400,
  fontFamily: 'iransans',
  fontSize: 20,
  color: kColorSpecBlue,
);

const kColorLightBlue = Color(0xffC4DBF0);
const kLoginTextfieldBoarderColor = Color(0xffe6e6e6);
const kLoginTextfieldBoarderColorRed = Colors.red;
const kLoginTextFieldContentPadding = 15.0;
const kBlueDialog = Color(0xff1C4870);

const kHomehadese = TextStyle(
  color: Color(0xff969798),
  fontSize: 20,
  fontWeight: FontWeight.bold,
  fontFamily: 'iransans',
);

const kHadeseTypeTitle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: kColorRed,
  fontFamily: 'iransans',
);

const kCamera = TextStyle(
  fontSize: 14,
  fontFamily: 'iransans',
  fontWeight: FontWeight.bold,
  color: kColorDarkBlue,
);

const kCustomButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontFamily: 'iransans',
  fontWeight: FontWeight.bold,
);

const kCameraButton = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 14,
  fontFamily: 'iransans',
);

const kHadeseType = TextStyle(
  fontSize: 10,
  fontFamily: 'iransans',
  fontWeight: FontWeight.bold,
  color: kColorRed,
);

const kPelakIran = TextStyle(
  fontWeight: FontWeight.bold,
  fontFamily: 'iransans',
  fontSize: 10,
  color: Colors.white,
);

const kHomefirst = TextStyle(
  fontSize: 20,
  color: Color(0xff969798),
  fontWeight: FontWeight.bold,
  fontFamily: 'iransans',
);

const kHomepageTextStyle = TextStyle(
  color: kColorDarkBlue,
  fontFamily: 'iransans',
  fontWeight: FontWeight.bold,
  fontSize: 12,
);

const kLoginTextfieldDecorationError = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(50.0),
  ),
  borderSide: BorderSide(
    color: kColorDarkRed,
    width: 3.0,
  ),
);

const kLoginTextFieldHintColor = Color(0xffc2c2c2);
const kLoginTextFieldTextColor = Color(0xff000000);
const kUltralightBlue = Color(0xffC4DBF0);
const kLoginTextfieldsInsideColor = Colors.white;

const kSidebarText = TextStyle(
  color: kColorDarkBlue,
  fontSize: 14,
  fontFamily: 'iransans',
  fontWeight: FontWeight.bold,
);

const kLoginTextStyleHint = TextStyle(
  fontFamily: 'iransans',
  fontWeight: FontWeight.w300,
  fontSize: 17.0,
  color: kLoginTextFieldHintColor,
);

const kLoginTextFieldTextStyle = TextStyle(
  fontFamily: 'iransans',
  fontWeight: FontWeight.bold,
  fontSize: 16.0,
  color: kColorDarkBlue,
);

const kHagheBime = TextStyle(
  color: kColorDarkBlue,
  fontSize: 16,
  fontWeight: FontWeight.bold,
  fontFamily: 'iransans',
);

const kLoginErrorTextFieldTextStyle = TextStyle(
  fontFamily: 'iransans',
  fontWeight: FontWeight.bold,
  fontSize: 16.0,
  color: kColorDarkRed,
);

const kLabelStyle = TextStyle(
  fontSize: 12,
  fontFamily: 'iransans',
  color: kColorDarkBlue,
);

const kLabelErrorStyle = TextStyle(
  fontSize: 12,
  fontFamily: 'iransans',
  color: kColorDarkRed,
);

const kLoginBottomTextRightColor = Color(0xffed5c61);
const kLoginBottomTextRightStyle = TextStyle(
  fontFamily: 'iransans',
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  color: kLoginBottomTextRightColor,
);

const kLoginBottomTextSignInColor = Color(0xff253d4b);
const kLoginBottomTextSignInStyle = TextStyle(
  fontFamily: 'iransans',
  fontSize: 13.0,
  fontWeight: FontWeight.w700,
  color: kColorDarkBlue,
);

const kLoginPadding = 20.0;

const kLoginBackColorTop = Color(0xfff3f3f3);
const kLoginBackColorBottom = Color(0xffdbdbdb);

const kLoginTextChangeNumberStyle = TextStyle(
  fontFamily: 'iransans',
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  color: kLoginBottomTextRightColor,
);

const kLoginTextResendColor = Color(0xff9a9a9a);
const kLoginTextResendStyle = TextStyle(
  fontFamily: 'iransans',
  fontSize: 14.0,
  fontWeight: FontWeight.w300,
  color: kLoginTextResendColor,
);

const kInfoDividerThikness = 3.0;

const kInfoStuffSignInColor = Color(0xffed1c24);

const kMaxDigitsOfPhoneNum = 10;
const kMaxLengthOfOTPCode = 5;

const kCountDownSecondsOTP = 60;

const kTempTextStyle = TextStyle(
  fontFamily: 'iransans',
  fontSize: 12.0,
  color: Colors.black45,
  decoration: TextDecoration.none,
);
const kMSColorOfDivider = Color(0xffc2c2c2);

const kMinCharName = 2;

const kPaddingTakePicScreenVertical = 25.0;
const kPaddingTakePicScreenHorizontal = 20.0;

const kTakePhotoTopColor = Color(0xffcce0e5);
const kTakePhotoBottomColor = Color(0xffededed);
const kTakePhotoArrowColor = Color(0xcc174561);

const kTakePhotoProfileNameStyle = TextStyle(
  fontFamily: 'iransans',
  fontSize: 16.0,
  color: kTakePhotoArrowColor,
  fontWeight: FontWeight.w500,
  decoration: TextDecoration.none,
);

const kTakePhotoProfileNumberStyle = TextStyle(
  fontFamily: 'iransans',
  fontSize: 16.0,
  color: Colors.black,
  fontWeight: FontWeight.w400,
  decoration: TextDecoration.none,
);

const kDialogShasi = TextStyle(
  color: kColorDarkBlue,
  fontFamily: 'iransans',
  fontWeight: FontWeight.w500,
);

List<String> farsiCollection = [
  ' ',
  'أ',
  'إ',
  'ؤ',
  'ي',
  'ۀ',
  'ئ',
  'آ',
  'ا',
  'ب',
  'پ',
  'ت',
  'ث',
  'ج',
  'چ',
  'ح',
  'خ',
  'د',
  'ذ',
  'ر',
  'ز',
  'ژ',
  'س',
  'ش',
  'ص',
  'ض',
  'ط',
  'ظ',
  'ع',
  'غ',
  'ف',
  'ق',
  'ک',
  'گ',
  'ل',
  'م',
  'ن',
  'و',
  'ه',
  'ی',
];

Map<int, String> orders = {
  1: 'اول',
  2: 'دوم',
  3: 'سوم',
  4: 'چهارم',
  5: 'پنجم',
  6: 'ششم',
  7: 'هفتم',
  8: 'هشتم',
  9: 'نهم',
  10: 'دهم'
};

const universalTextColor = Color(0xff6e6e6e);

const universalTextStyleMain = TextStyle(
  fontFamily: 'iransans',
  fontWeight: FontWeight.w300,
  fontSize: 18.0,
  decoration: TextDecoration.none,
  color: universalTextColor,
);

const universalTextStyleAccent = TextStyle(
  fontFamily: 'iransans',
  fontWeight: FontWeight.w500,
  fontSize: 16.0,
  decoration: TextDecoration.none,
  color: universalTextColor,
);

const kBackColor = Color(0xffededed);
const kPaddingScreenHorizontal = 40.0;
const kPaddingScreenVertical = 35.0;

const kKarshenasTitleStyle = TextStyle(
  fontFamily: 'iransans',
  fontSize: 20.0,
  color: kLoginTitleColor,
  fontWeight: FontWeight.w700,
  decoration: TextDecoration.none,
);

const kKarshenasDescriptionStyle = TextStyle(
  fontFamily: 'iransans',
  fontSize: 16.0,
  color: kLoginDescriptionColor,
  fontWeight: FontWeight.w300,
  decoration: TextDecoration.none,
);

const kTextpaddinVer = 15.0;
const kTextpaddinHor = 25.0;

const kMaxNumOfDigitSerial = 10;
const kIconSize = 30.0;

const kColorConfirmButton = kColorRedCoBottom;

const kTopTextKarshenasInfo = TextStyle(
  fontFamily: 'iransans',
  color: Colors.black54,
  fontSize: 18.0,
  fontWeight: FontWeight.w700,
);

const kFieldsTextStyle = TextStyle(
  fontFamily: 'iransans',
  color: Colors.blueAccent,
  fontSize: 15.0,
  fontWeight: FontWeight.w300,
);
