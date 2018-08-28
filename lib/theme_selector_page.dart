import 'package:flutter/material.dart';
import 'package:theme_switcher/themes.dart';
import 'package:theme_switcher/theme_switcher.dart';

class ThemeSelectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeSwitcher inheritedThemeSwitcher = ThemeSwitcher.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme Selector',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () => inheritedThemeSwitcher.themeBloc.selectedTheme
                    .add(_buildLightTheme()),
                child: Text(
                  'Light theme',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RaisedButton(
                  onPressed: () => inheritedThemeSwitcher
                      .themeBloc.selectedTheme
                      .add(_buildDarkTheme()),
                  child: Text(
                    'Dark theme',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  DemoTheme _buildLightTheme() {
    return DemoTheme(
        'light',
        ThemeData(
          brightness: Brightness.light,
          accentColor: Colors.deepOrange,
          primaryColor: Colors.cyanAccent,
        ));
  }

  DemoTheme _buildDarkTheme() {
    return DemoTheme(
        'dark',
        ThemeData(
          brightness: Brightness.dark,
          accentColor: Colors.lightBlueAccent,
          primaryColor: Colors.pink,
        ));
  }
}
