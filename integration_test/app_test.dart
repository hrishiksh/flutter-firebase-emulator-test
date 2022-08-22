import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_firebase_emulator/main.dart' as app;

void main() {
  final IntegrationTestWidgetsFlutterBinding binding =
      IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Tapping on floating action button and varify counter",
      (tester) async {
    app.main();
    await tester.pumpAndSettle();

    expect(find.text('0'), findsOneWidget);

    final Finder fab = find.byTooltip("Increment");

    await tester.tap(fab);

    await tester.pumpAndSettle();

    expect(find.text("1"), findsOneWidget);
  });
}
