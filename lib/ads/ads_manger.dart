import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

String test='ca-app-pub-3940256099942544/6300978111';


String testVideo='ca-app-pub-3940256099942544/8691691433';

String testrewardedAdUnitId="ca-app-pub-3940256099942544/5224354917";


class AdsManager {
  static bool testMode = false;

  late InterstitialAd? interstitialAd;
  int numInterstitialLoadAttempts = 0;

  static String get bannerAdUnitId {
    if (testMode == true) {
      return  'ads';
    } else if (Platform.isAndroid) {
      return  'ads';
    }else if(Platform.isIOS){
      return  'ads';

    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }


  static String get bottomShetInitrstitiolAdId{
    if(testMode){
      return '$testVideo';

    }else if(Platform.isAndroid){
      return '$testVideo';
    }else {
      throw UnsupportedError('Unsupported platform');
    }

  }




  //rewardedAd

static String get rewardedAdUnitId{
    if(testMode){
      return  'videorewardedAdUnitId';
    }
    return 'videorewardedAdUnitId';
}

}


//InterstitialAd.testAdUnitId






















//
// import 'dart:io';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
//
// String ads='ca-app-pub-8541000940174745/9996955117';
//
// class AdsManager {
//   static bool testMode = false;
//
//   late InterstitialAd? interstitialAd;
//   int numInterstitialLoadAttempts = 0;
//
//   static String get bannerAdUnitId {
//     if (testMode == true) {
//       return 'ca-app-pub-3940256099942544/6300978111';
//     } else if (Platform.isAndroid) {
//       return 'ca-app-pub-3940256099942544/6300978111';
//     } else {
//       throw UnsupportedError('Unsupported platform');
//     }
//   }
//
//   static String get rewardedAdUnitId {
//     if (testMode == true) {
//       return 'ca-app-pub-3940256099942544/5224354917';
//     } else if (Platform.isAndroid) {
//       return 'ca-app-pub-3940256099942544/5224354917';
//     } else {
//       throw UnsupportedError('Unsupported platform');
//     }
//   }
//
//   static String get interstitialAdUnitId {
//     if (testMode == true) {
//       return 'ca-app-pub-3940256099942544/8691691433';
//     } else if (Platform.isAndroid) {
//       return 'ca-app-pub-3940256099942544/8691691433';
//     } else {
//       throw UnsupportedError('Unsupported platform');
//     }
//   }
// }






















//InterstitialAd.testAdUnitId



















//
// import 'dart:io';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
//
// String ads='ca-app-pub-8541000940174745/9996955117';
//
// class AdsManager {
//   static bool testMode = false;
//
//   late InterstitialAd? interstitialAd;
//   int numInterstitialLoadAttempts = 0;
//
//   static String get bannerAdUnitId {
//     if (testMode == true) {
//       return 'ca-app-pub-3940256099942544/6300978111';
//     } else if (Platform.isAndroid) {
//       return 'ca-app-pub-3940256099942544/6300978111';
//     } else {
//       throw UnsupportedError('Unsupported platform');
//     }
//   }
//
//   static String get rewardedAdUnitId {
//     if (testMode == true) {
//       return 'ca-app-pub-3940256099942544/5224354917';
//     } else if (Platform.isAndroid) {
//       return 'ca-app-pub-3940256099942544/5224354917';
//     } else {
//       throw UnsupportedError('Unsupported platform');
//     }
//   }
//
//   static String get interstitialAdUnitId {
//     if (testMode == true) {
//       return 'ca-app-pub-3940256099942544/8691691433';
//     } else if (Platform.isAndroid) {
//       return 'ca-app-pub-3940256099942544/8691691433';
//     } else {
//       throw UnsupportedError('Unsupported platform');
//     }
//   }
// }


















