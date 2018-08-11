import 'package:flutter/material.dart';
import 'package:theme_switcher/home_page.dart';
import 'package:theme_switcher/themes.dart';

void main() => runApp(new ThemeSwitcherApp());

class ThemeSwitcherApp extends StatefulWidget {
  @override
  _ThemeSwitcherAppState createState() => _ThemeSwitcherAppState();
}

class _ThemeSwitcherAppState extends State<ThemeSwitcherApp> {
  ThemeBloc _themeBloc;

  @override
  void initState() {
    super.initState();
    _themeBloc = ThemeBloc();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ThemeData>(
      initialData: _themeBloc.initialTheme().data,
      stream: _themeBloc.themeDataStream,
      builder: (BuildContext context, AsyncSnapshot<ThemeData> snapshot) {
        return MaterialApp(
          title: 'Theme Switcher',
          theme: snapshot.data,
          home: HomePage(
            themeBloc: _themeBloc,
          ),
        );
      },
    );
  }
}
