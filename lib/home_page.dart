import 'package:flutter/material.dart';
import 'package:theme_switcher/theme_selector_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
        actions: <Widget>[
          IconButton(
            key: Key('Icon'),
            icon: Icon(
              Icons.list,
            ),
            tooltip: 'Theme selector',
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ThemeSelectorPage()));
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // do nothing
        },
        child: Icon(
          Icons.done,
        ),
      ),
      body: Center(
        child: Text(
          'Wow! Flutter is awesome!',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
