import 'package:action2/ads/wiget_ads/widget_unit_admob.dart';
import 'package:action2/page2.dart';
import 'package:flutter/material.dart';

class HomePageDeutchlind extends StatefulWidget {
  const HomePageDeutchlind({super.key});

  @override
  State<HomePageDeutchlind> createState() => _HomePageDeutchlindState();
}

class _HomePageDeutchlindState extends State<HomePageDeutchlind> {
  List<Widget> ListScrent = [Page2(), Page2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 350,
        width: 350,
        child: ListView.builder(
          itemCount: 25,
          itemBuilder: (context, index) {
            return AdsAllUnityAdmob(
              screen: ListScrent[index],
              child: Column(
                children: [
                  Text(
                    index.toString() + "data",
                    style: TextStyle(color: Colors.amber, fontSize: 22),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
