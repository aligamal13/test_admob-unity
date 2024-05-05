import 'dart:math';

import 'package:action2/color.dart';
import 'package:action2/list_bottom/ConvirsionPageDeutsch.dart';
import 'package:action2/list_bottom/homepagedeutchlind.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class BottomProvedrdeutsch extends ChangeNotifier {
  int curintIndex = 0;

  var initValue;


  void ChingIndex(index) {
    curintIndex = index;
    notifyListeners();
  }

  List<Widget> ListScreens = [
    // GrammarPage(),
    HomePageDeutchlind(),
    ConvirsionPageDeutsch(),
    ConvirsionPageDeutsch(),
  ];

  List<String> listTitle = [
    'HomeScreen',
    'CatgoryScreen',
    'SettingsScreen',
  ];

  List<BottomNavigationBarItem> lisBottom = [
    BottomNavigationBarItem(
        backgroundColor: ColorManager.app,
        icon: CachedNetworkImage(
          imageUrl: 'https://cdn-icons-png.flaticon.com/512/3839/3839707.png',
          height: 25,
          width: 35,
          placeholder: (context, url) => Icon(FontAwesomeIcons.bookOpenReader),
          errorWidget: (context, url, error) =>
          const Icon(FontAwesomeIcons.bookOpenReader),
        ),
        label: 'vocabulary'),
    BottomNavigationBarItem(
        backgroundColor: ColorManager.app,
        icon: CachedNetworkImage(
          imageUrl: 'https://cdn-icons-png.flaticon.com/512/921/921350.png',
          fit: BoxFit.fill,
          height: 25,
          width: 35,
          placeholder: (context, url) => Icon(FontAwesomeIcons.book),
          errorWidget: (context, url, error) =>
          const Icon(FontAwesomeIcons.book),
        ),
        label: 'Conversation'),
    BottomNavigationBarItem(
        backgroundColor: ColorManager.app,
        icon: CachedNetworkImage(
          imageUrl:
          'https://cdn.iconscout.com/icon/premium/png-256-thumb/quiz-2058311-1731927.png',
          height: 25,
          width: 35,
          placeholder: (context, url) => Icon(FontAwesomeIcons.gamepad),
          errorWidget: (context, url, error) =>
          const Icon(FontAwesomeIcons.gamepad),
        ),
        label: 'games'),
  ];

  bool isdark = false;

  }
