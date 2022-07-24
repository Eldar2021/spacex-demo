// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:spacex_theme/src/components/components.dart';

class SpacexTheme with CompomnentTheme {
  const SpacexTheme({required this.color, required this.mode});

  final Color color;
  final bool mode;

  // static const pageTransitionsTheme = PageTransitionsTheme(
  //   builders: <TargetPlatform, PageTransitionsBuilder>{
  //     TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
  //     TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  //     TargetPlatform.linux: NoAnimationPageTransitionsBuilder(),
  //     TargetPlatform.macOS: NoAnimationPageTransitionsBuilder(),
  //     TargetPlatform.windows: NoAnimationPageTransitionsBuilder(),
  //   },
  // );

  ColorScheme colors() {
    return ColorScheme.fromSeed(
      seedColor: color,
      brightness: mode ? Brightness.light : Brightness.dark,
    );
  }

  ThemeData light([Color? targetColor]) {
    final scheme = colors();
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
    final scheme = colors();
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

  ThemeData get theme => mode ? light() : dark();

  SpacexTheme copy({Color? newColor, bool? newMode}) {
    return SpacexTheme(color: newColor ?? color, mode: newMode ?? mode);
  }
}
