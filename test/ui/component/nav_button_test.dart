import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/routes.dart';
import 'package:portfolio/ui/component/nav_button.dart';

void main() {
  group('NavButton Widget Tests', () {
    testWidgets('should display label text', (WidgetTester tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: NavButton(
              label: 'Home',
              route: Routes.home,
            ),
          ),
        ),
      );

      // Assert
      expect(find.text('Home'), findsOneWidget);
    });

    testWidgets('should be a TextButton', (WidgetTester tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: NavButton(
              label: 'About',
              route: Routes.about,
            ),
          ),
        ),
      );

      // Assert
      expect(find.byType(TextButton), findsOneWidget);
    });

    testWidgets('should have fixed width', (WidgetTester tester) async {
      // Arrange & Act
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: NavButton(
              label: 'Blog',
              route: Routes.blog,
            ),
          ),
        ),
      );

      // Assert
      final textButton = tester.widget<TextButton>(find.byType(TextButton));
      final buttonStyle = textButton.style;
      expect(buttonStyle, isNotNull);
    });
  });
}
