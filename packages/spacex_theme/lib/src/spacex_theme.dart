// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:spacex_theme/src/components/components.dart';

class SpacexTheme with CompomnentTheme {
  const SpacexTheme(this.color);

  final Color color;

  // static const pageTransitionsTheme = PageTransitionsTheme(
  //   builders: <TargetPlatform, PageTransitionsBuilder>{
  //     TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
  //     TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  //     TargetPlatform.linux: NoAnimationPageTransitionsBuilder(),
  //     TargetPlatform.macOS: NoAnimationPageTransitionsBuilder(),
  //     TargetPlatform.windows: NoAnimationPageTransitionsBuilder(),
  //   },
  // );

  ColorScheme colors(Brightness brightness) {
    return ColorScheme.fromSeed(seedColor: color, brightness: brightness);
  }

  ThemeData light([Color? targetColor]) {
    final scheme = colors(Brightness.light);
    return ThemeData.light().copyWith(
      colorScheme: scheme,
      appBarTheme: appBarTheme(scheme),
      cardTheme: cardTheme(),
      listTileTheme: listTileTheme(scheme),
      bottomAppBarTheme: bottomAppBarTheme(scheme),
      bottomNavigationBarTheme: bottomNavigationBarTheme(scheme),
      navigationRailTheme: navigationRailTheme(scheme),
      tabBarTheme: tabBarTheme(scheme),
      drawerTheme: drawerTheme(scheme),
      buttonTheme: buttonTheme(scheme),
      inputDecorationTheme: inputDecorationTheme(scheme),
      elevatedButtonTheme: elevatedButtonThemeData(scheme),
      scrollbarTheme: scrollbarThemeData(scheme),
      useMaterial3: true,
    );
  }

  ThemeData dark([Color? targetColor]) {
    final scheme = colors(Brightness.dark);
    return ThemeData.dark().copyWith(
      colorScheme: scheme,
      appBarTheme: appBarTheme(scheme),
      cardTheme: cardTheme(),
      listTileTheme: listTileTheme(scheme),
      bottomAppBarTheme: bottomAppBarTheme(scheme),
      bottomNavigationBarTheme: bottomNavigationBarTheme(scheme),
      navigationRailTheme: navigationRailTheme(scheme),
      tabBarTheme: tabBarTheme(scheme),
      drawerTheme: drawerTheme(scheme),
      buttonTheme: buttonTheme(scheme),
      inputDecorationTheme: inputDecorationTheme(scheme),
      elevatedButtonTheme: elevatedButtonThemeData(scheme),
      useMaterial3: true,
    );
  }

  SpacexTheme copy([Color? newColor]) => SpacexTheme(newColor ?? color);
}
