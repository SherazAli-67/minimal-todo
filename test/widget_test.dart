import 'package:flutter_test/flutter_test.dart';
import 'package:minimal_todo/constants/string_constant.dart';
import 'package:minimal_todo/main.dart';

void main() {
  testWidgets('Home screen shows greeting, categories, and ongoing tasks', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('${StringConst.greetingPrefix}${StringConst.userName}'), findsOneWidget);
    expect(find.text(StringConst.categories), findsOneWidget);
    expect(find.text(StringConst.ongoingTasks), findsOneWidget);
    expect(find.text('Wallet App Design'), findsOneWidget);
  });

  testWidgets('See all opens today tasks screen', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text(StringConst.seeAll));
    await tester.pumpAndSettle();

    expect(find.text(StringConst.todayTasks), findsOneWidget);
    expect(find.text(StringConst.todayDate), findsOneWidget);
    expect(find.text('Mobile Wireframing'), findsOneWidget);
  });
}
