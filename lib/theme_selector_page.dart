import 'package:flutter/material.dart';

class ThemeSelectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                onPressed: () {
                  // do nothing for now
                },
                child: Text(
                  'Light theme',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RaisedButton(
                  onPressed: () {
                    // do nothing for now
                  },
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
}
