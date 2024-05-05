
import 'package:action2/color.dart';
import 'package:action2/provider/bottom_prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class BootomNAvgitonScreenDeutsch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomProvedrdeutsch>(
      builder: (BuildContext context, value, Widget? child) {
        return
           Scaffold(

            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

            body: value.ListScreens[value.curintIndex],
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: ColorManager.app,
                unselectedItemColor: ColorManager.white,
                fixedColor: ColorManager.erorr,

                items: value.lisBottom,
                currentIndex: value.curintIndex,
                onTap: (index) {
                  //Handle button tap

                  value.ChingIndex(index);

                }),


          );
      },







    );
  }
}


