import 'package:flutter_test/flutter_test.dart';
// ignore: depend_on_referenced_packages
import 'package:projeto1/main.dart'; 

void main() {
  testWidgets('App loads and navigates between pages', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Home Page'), findsOneWidget);
    expect(find.text('Go to Second Page'), findsOneWidget);

    await tester.tap(find.text('Go to Second Page'));
    await tester.pumpAndSettle();

    expect(find.text('Second Page'), findsOneWidget);
    expect(find.text('Back to Home'), findsOneWidget);
  });
}
