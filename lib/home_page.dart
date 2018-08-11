import 'package:flutter/material.dart';

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
            icon: Icon(
              Icons.list,
            ),
            tooltip: 'Theme selector',
            onPressed: () {
              // do nothing for now
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
