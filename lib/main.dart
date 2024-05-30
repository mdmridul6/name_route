import 'package:flutter/material.dart';
import 'package:named_route/HomeScreen.dart';
import 'package:named_route/ProfileScreen.dart';
import 'package:named_route/SettingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        initialRoute: '/', onGenerateRoute: _materialPageRoute);
  }
}

MaterialPageRoute? _materialPageRoute(RouteSettings settings) {
  Widget? widget;
  switch (settings.name) {
    case '/':
      widget = const HomeScreen();
      break;
    case '/profile':
      String username = settings.arguments as String;
      widget = ProfileScreen(name: username);
    case '/setting':
      widget = const SettingScreen();
      break;
  }

  if (widget != null) {
    return MaterialPageRoute(builder: (context) => widget!);
  }
  return null;
}





