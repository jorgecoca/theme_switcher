import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Theme Switcher', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) driver.close();
    });
    
    test('Switch between light and dark themes', () async {
      final lightThemeButton = find.text('Light theme');
      final darkThemeButton = find.text('Dark theme');
      await driver.tap(find.byValueKey('Icon'));
      await driver.getText(lightThemeButton);
      await driver.getText(darkThemeButton);
      await driver.tap(lightThemeButton);
      await driver.tap(darkThemeButton);
    });
  });
}
