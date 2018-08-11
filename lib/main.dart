import 'package:flutter/material.dart';
import 'package:theme_switcher/home_page.dart';

void main() => runApp(new ThemeSwitcherApp());

class ThemeSwitcherApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Switcher',
      home: HomePage(),
    );
  }
}
