import 'package:flutter/material.dart';

import 'package:app_flutter/models/menu_options.dart';
import 'package:app_flutter/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt,
        title: 'Listview type 1',
        screen: const ListViewScreen1()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt,
        title: 'Listview type 2',
        screen: const ListViewScreen2()),
    MenuOption(
      route: 'customcardtype1',
      icon: Icons.card_giftcard,
      title: 'Custom Card Type1',
      screen: const CustomCardType1(),
    ),
    MenuOption(
      route: 'cardscreen',
      icon: Icons.card_giftcard,
      title: 'Card Screen',
      screen: const CardScreen(),
    ),
    MenuOption(
        route: 'aboutme',
        icon: Icons.account_circle,
        title: 'About Me',
        screen: const AboutMe()),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
