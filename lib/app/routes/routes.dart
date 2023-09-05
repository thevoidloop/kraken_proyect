import 'package:flutter/material.dart';
import 'package:kraken_proyect/ui/screens/screens.dart';

class AppRoutes {
  static const String login = '/login';
  static const String home = '/home';
}

Map<String, WidgetBuilder> getRoutes() {
  return {
    AppRoutes.login: (BuildContext context) => LoginScreen(),
    AppRoutes.home: (BuildContext context) => MainScreen(),
  };
}
