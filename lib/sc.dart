import 'package:action2/ads/wiget_ads/widget_unit_admob.dart';
import 'package:action2/page2.dart';
import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
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
            return InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return alertDilogAll(screen: ListScrent[index]);
                    });
              },
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
