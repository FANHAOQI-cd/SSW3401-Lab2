import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab2_flutter_gui/main.dart';

void main() {
  testWidgets('Home shows the tutorial greeting and loads the local image', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('My tickets'), findsOneWidget);
    expect(find.text('Good morning'), findsOneWidget);
    expect(find.text('Book Tickets'), findsOneWidget);
    expect(find.text('Search icon'), findsOneWidget);
    expect(find.text('Empty space'), findsOneWidget);
    expect(find.bySemanticsLabel('Book Tickets logo'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('All navigation tabs open and Home can be restored', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    const labels = ['Search', 'Tickets', 'Profile'];
    const pages = ['Search', 'Tickets', 'Profile'];
    for (final (index, label) in labels.indexed) {
      await tester.tap(find.byTooltip(label));
      await tester.pumpAndSettle();

      expect(
        find.descendant(
          of: find.byKey(const ValueKey('page-content')),
          matching: find.text(pages[index]),
        ),
        findsOneWidget,
      );
      expect(find.text('Good morning'), findsNothing);
      expect(
        tester
            .widget<BottomNavigationBar>(find.byType(BottomNavigationBar))
            .currentIndex,
        index + 1,
      );
    }

    await tester.tap(find.byTooltip('Home'));
    await tester.pumpAndSettle();

    expect(find.text('Good morning'), findsOneWidget);
    expect(find.text('Book Tickets'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Header fits a narrow phone with enlarged text', (tester) async {
    tester.view.physicalSize = const Size(280, 480);
    tester.view.devicePixelRatio = 1;
    tester.platformDispatcher.textScaleFactorTestValue = 2;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);

    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Book Tickets'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
