import 'package:flutter/material.dart';

import 'routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  //Widget root of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
    );
  }
}
