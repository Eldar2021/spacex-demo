import 'package:crew_member_repository/crew_member_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rocket_repository/rocket_repository.dart';

import '../../src.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.memberRepository,
    required this.rocketRepository,
  });

  final RocketRepository rocketRepository;
  final CrewMemberRepository memberRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: rocketRepository),
        RepositoryProvider.value(value: memberRepository),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          brightness: Brightness.dark,
          secondary: Colors.white,
        ),
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        dividerTheme: const DividerThemeData(
          indent: 16,
          space: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
          ),
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }
}