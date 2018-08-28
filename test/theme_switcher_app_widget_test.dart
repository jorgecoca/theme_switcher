import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:theme_switcher/theme_selector_page.dart';

void main() {
  testWidgets('theme selector contains Light and Dark theme widgets',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ThemeSelectorPage(),
    ));
    expect(find.text('Light theme'), findsOneWidget);
    expect(find.text('Dark theme'), findsOneWidget);
  });
}
