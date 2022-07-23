import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:crew_member_repository/crew_member_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:rocket_repository/rocket_repository.dart';
import 'package:spacex_demo/src/app/app.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap() async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final memberRepository = CrewMemberRepository();
  final rocketRepository = RocketRepository();

  await runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async => runApp(
          App(
            memberRepository: memberRepository,
            rocketRepository: rocketRepository,
          ),
        ),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
