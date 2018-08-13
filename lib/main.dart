import 'package:flutter/material.dart';
import 'package:theme_switcher/home_page.dart';
import 'package:theme_switcher/themes.dart';

void main() => runApp(new ThemeSwitcherApp());

class ThemeSwitcherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeBloc themeBloc = ThemeBloc();
    return StreamBuilder<ThemeData>(
      initialData: themeBloc.initialTheme().data,
      stream: themeBloc.themeDataStream,
      builder: (BuildContext context, AsyncSnapshot<ThemeData> snapshot) {
        return MaterialApp(
          title: 'Theme Switcher',
          theme: snapshot.data,
          home: HomePage(
            themeBloc: themeBloc,
          ),
        );
      },
    );
  }
}
