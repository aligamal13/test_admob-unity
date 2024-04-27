import 'dart:developer';

import 'package:action2/ads/ads_manger.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdRewarded {
  static late RewardedAd _rewardedAd;
  static bool isAdReady = false;

  static void loadAd() {

    RewardedAd.load(adUnitId: AdsManager.rewardedAdUnitId,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
            onAdLoaded: (ad) {
              _rewardedAd = ad;
              isAdReady = true;
            },
            onAdFailedToLoad: (error) {
              log('failed to lad reward ad ${error.message}');
            }
        ));
  }


  static void showAd() {

    if (isAdReady) {
      _rewardedAd.show(onUserEarnedReward: (ad,rewardItem){
        log("reward item type =${rewardItem.type}");
        log("reward item amount =${rewardItem.amount}");

      }
      );
    }

  }
}