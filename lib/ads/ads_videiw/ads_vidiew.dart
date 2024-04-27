import 'package:action2/ads/ads_manger.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdInterIsteilBotomShet {
  static late InterstitialAd _interstitialAd;
  static bool isAdRedy = false;

  static void loadInterStiAd() {
    InterstitialAd.load(
        adUnitId: AdsManager.bottomShetInitrstitiolAdId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: (InterstitialAd ad){
              isAdRedy=true;
              _interstitialAd=ad;
            },
            onAdFailedToLoad: (error){

            }));
  }
  static void showInterstiolAd(){
    if(isAdRedy){
      _interstitialAd.show();
    }
  //  _interstitialAd.show();
  }
}
