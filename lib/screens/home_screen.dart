import "package:flutter/material.dart";

import '../routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Application Home'),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading:
                      Icon(AppRoutes.menuOptions[i].icon, color: Colors.blue),
                  title: Text(AppRoutes.menuOptions[i].title),
                  onTap: () => Navigator.pushNamed(
                      context, AppRoutes.menuOptions[i].route),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOption.length));
  }
}
