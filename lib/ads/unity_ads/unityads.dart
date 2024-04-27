
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';




















//////

class AdManager {
  static String get gameId {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return '5447483';
    }
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'your_ios_game_id';
    }
    return '';
  }

  static String get bannerAdPlacementId {
    return 'b5';
  }

  static String get interstitialVideoAdPlacementId {
    return 'i55';
  }

  static String get rewardedVideoAdPlacementId {
    return 'r55';
  }
}




/////////





///////////////////


Widget unityBinner() =>
    SizedBox(child: UnityBannerAd(placementId: AdManager.bannerAdPlacementId));

loadUnity() {
  UnityAds.load(placementId: AdManager.interstitialVideoAdPlacementId);
  UnityAds.load(placementId: AdManager.rewardedVideoAdPlacementId);
  UnityAds.load(placementId: AdManager.bannerAdPlacementId);
}
































