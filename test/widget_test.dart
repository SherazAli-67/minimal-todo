import 'package:flutter_test/flutter_test.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/main.dart';
import 'package:minimal_todo/router/app_router.dart';

void main() {
  setUp(() => router.go(NamedRoutes.welcome.routeName));

  Future<void> clearPendingExceptions(WidgetTester tester) async {
    await tester.pump();
    while (tester.takeException() != null) {}
  }

  testWidgets('Welcome screen shows brand and CTA', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text(StringConst.appTitle), findsOneWidget);
    expect(find.text(StringConst.welcomeHeadline), findsOneWidget);
    expect(find.text(StringConst.getStarted), findsOneWidget);
  });

  testWidgets('Get Started opens home screen', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text(StringConst.getStarted));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    await clearPendingExceptions(tester);

    expect(find.text('${StringConst.greetingPrefix}${StringConst.devName}'), findsOneWidget);
    expect(find.text(StringConst.categories), findsOneWidget);
    expect(find.text(StringConst.ongoingTasks), findsOneWidget);
    expect(find.text('Wallet App Design'), findsOneWidget);
  });

  testWidgets('See all opens today tasks screen', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text(StringConst.getStarted));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    await clearPendingExceptions(tester);

    await tester.tap(find.text(StringConst.seeAll));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    await clearPendingExceptions(tester);

    expect(find.text(StringConst.todayTasks), findsOneWidget);
    expect(find.text(StringConst.todayDate), findsOneWidget);
    expect(find.text('Mobile Wireframing'), findsOneWidget);
  });
}
