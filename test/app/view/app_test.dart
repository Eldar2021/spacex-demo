import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_demo/src/src.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const AppView());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
