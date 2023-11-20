import 'package:peter_space/app/shared/components/simple-badge_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modular_test/modular_test.dart';

main() {
  group('SimpleBadgeWidget', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(SimpleBadgeWidget(title: 'T')));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}