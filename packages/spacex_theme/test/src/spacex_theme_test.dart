// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_theme/spacex_theme.dart';

void main() {
  group('SpacexTheme', () {
    test('can be instantiated', () {
      expect(SpacexTheme(Colors.amber), isNotNull);
    });
  });
}
