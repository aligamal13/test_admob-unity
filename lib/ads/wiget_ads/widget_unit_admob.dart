
import 'package:action2/ads/rewardedAdUnitId.dart';
import 'package:action2/sc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

import '../ads_videiw/ads_vidiew.dart';
import '../unity_ads/unityads.dart';


void navgiTo(context, Widget screen) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ));

void navgiToAndFinsh(context, screen) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
        (Route<dynamic> route) => false);

///////////////
class AdsAllUnityAdmob extends StatefulWidget {
  dynamic screen,child;
  AdsAllUnityAdmob({required this.screen,required this.child,super.key});

  @override
  State<AdsAllUnityAdmob> createState() => _AdsAllUnityAdmobState();
}


class _AdsAllUnityAdmobState extends State<AdsAllUnityAdmob> {
  @override
  void initState() {
    UnityAds.load(placementId: AdManager.interstitialVideoAdPlacementId);

    UnityAds.init(
      gameId: AdManager.gameId,
      testMode: true,
    );

    AdInterIsteilBotomShet.loadInterStiAd();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async{
          final isload =
          await AdInterIsteilBotomShet.isAdRedy;
          if (isload ?? false) {
            AdInterIsteilBotomShet.loadInterStiAd();

            AdInterIsteilBotomShet.showInterstiolAd();
            navgiTo(context, widget.screen);
          } else {
            UnityAds.load(placementId: AdManager.interstitialVideoAdPlacementId);
            UnityAds.showVideoAd(placementId: AdManager.interstitialVideoAdPlacementId);
            navgiTo(context, widget.screen);
          }



        },
        child:widget.child);
  }
}

/////////////





////////

class alertDilogAll extends StatefulWidget {
  dynamic screen;

  alertDilogAll({required this.screen});

  @override
  State<alertDilogAll> createState() => _alertDilogAllState();
}

class _alertDilogAllState extends State<alertDilogAll> {
  @override
  void initState() {
    UnityAds.load(placementId: AdManager.interstitialVideoAdPlacementId);

    UnityAds.init(
      gameId: AdManager.gameId,
      testMode: true,
    );

    AdInterIsteilBotomShet.loadInterStiAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 70,
                bottom: 22,
                left: 16,
                right: 16,
              ),
              margin: EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0))
                  ]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "VIP هذ الدرس",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FittedBox(
                        child: Text(
                          "لدخول الدرس شاهد الإعلان",
                          style: TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              navgiToAndFinsh(
                                  context, PageScreen());
                            },
                            child:
                            Text("منع الأعلانات", style: TextStyle(
                               color:Colors.white
                            ),)),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffffffff),
                                offset: Offset(0.0, 1.0),
                                //(x,y)
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: TextButton(
                            onPressed: () async{
                              final isload =
                              await AdInterIsteilBotomShet.isAdRedy;
                              if (isload ?? false) {
                                AdInterIsteilBotomShet.loadInterStiAd();

                                AdInterIsteilBotomShet.showInterstiolAd();
                                navgiTo(context, widget.screen);
                              } else {
                                UnityAds.load(placementId: AdManager.interstitialVideoAdPlacementId);
                                UnityAds.showVideoAd(placementId: AdManager.interstitialVideoAdPlacementId);
                                navgiTo(context, widget.screen);
                              }
                            },
                            child: Text('شاهد الإعلان',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 16,
              right: 16,
              child: Icon(
                Icons.star_rate_sharp,
                color: Colors.amber,
                size: MediaQuery.of(context).size.height / 19,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.cancel,
                  color: Colors.red,
                  size: MediaQuery.of(context).size.height / 25,
                ),
              ),
            )
          ],
        ));
  }
}



/////////












///////////////
class AdsAllUnityAdmobVidew extends StatefulWidget {
  dynamic screen,child;
  AdsAllUnityAdmobVidew({required this.screen,required this.child,super.key});

  @override
  State<AdsAllUnityAdmobVidew> createState() => _AdsAllUnityAdmobVidewState();
}


class _AdsAllUnityAdmobVidewState extends State<AdsAllUnityAdmobVidew> {
  @override
  void initState() {
    UnityAds.load(placementId: AdManager.rewardedVideoAdPlacementId);

    UnityAds.init(
      gameId: AdManager.gameId,
      testMode: true,
    );

    AdRewarded.loadAd();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async{
          final isload =
          await AdRewarded.isAdReady;
          if (isload ?? false) {
            AdRewarded.loadAd();

            AdRewarded.showAd();
            navgiTo(context, widget.screen);
          } else {
            UnityAds.load(placementId: AdManager.rewardedVideoAdPlacementId);
            UnityAds.showVideoAd(placementId: AdManager.rewardedVideoAdPlacementId);
            navgiTo(context, widget.screen);
          }



        },
        child:widget.child);
  }
}

/////////////






///////////////
class AdsAllUnityAdmobGimasQuiz extends StatefulWidget {
  dynamic screen,child;
  AdsAllUnityAdmobGimasQuiz({required this.screen,required this.child,super.key});

  @override
  State<AdsAllUnityAdmobGimasQuiz> createState() => _AdsAllUnityAdmobGimasQuizState();
}


class _AdsAllUnityAdmobGimasQuizState extends State<AdsAllUnityAdmobGimasQuiz> {
  @override
  void initState() {
    UnityAds.load(placementId: AdManager.rewardedVideoAdPlacementId);

    UnityAds.init(
      gameId: AdManager.gameId,
      testMode: true,
    );

    AdRewarded.loadAd();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 170,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.greenAccent,
          boxShadow: [
            BoxShadow(
              color: Color(0xffBCB6B6),
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 5.0,
            ),
          ],
        ),

        child: InkWell(
          onTap: () async{
            final isload =
            await AdInterIsteilBotomShet.isAdRedy;
            if (isload ?? false) {
              AdInterIsteilBotomShet.loadInterStiAd();

              AdInterIsteilBotomShet.showInterstiolAd();
              navgiToAndFinsh(context, widget.screen);
            } else {
              UnityAds.load(placementId: AdManager.interstitialVideoAdPlacementId);
              UnityAds.showVideoAd(placementId: AdManager.interstitialVideoAdPlacementId);
              navgiToAndFinsh(context, widget.screen);
            }


          },
          child:widget.child),
    );
  }
}

/////////////





//////////

InitUnityAdmobMething(){

  final isload =      AdInterIsteilBotomShet.isAdRedy;
  if (isload ?? false) {
    AdInterIsteilBotomShet.loadInterStiAd();

    AdInterIsteilBotomShet.showInterstiolAd();
  } else {
    UnityAds.load(placementId: AdManager.interstitialVideoAdPlacementId);
    UnityAds.showVideoAd(placementId: AdManager.interstitialVideoAdPlacementId);

  }

}