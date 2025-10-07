// This is a basic Flutter widget test for the Recipe Book app.

import 'package:flutter_test/flutter_test.dart';

import 'package:recipe_book/main.dart';

void main() {
  testWidgets('Recipe Book app loads and displays recipes', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app title is displayed
    expect(find.text('Recipe Book'), findsOneWidget);

    // Verify that our favorite drink recipes are displayed
    expect(find.text('Mint Lemonade Mojito'), findsOneWidget);
    expect(find.text('Strawberry Matcha Latte'), findsOneWidget);
    expect(find.text('Pumpkin Caramel Latte'), findsOneWidget);

    // Verify that the favorites button is present
    expect(find.text('View Favorites'), findsOneWidget);
  });
}
