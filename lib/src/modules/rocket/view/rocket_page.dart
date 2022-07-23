import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rocket_repository/rocket_repository.dart';
import 'package:spacex_demo/src/modules/rocket/rocket.dart';

import 'rocket_view.dart';

class RocketsPage extends StatelessWidget {
  const RocketsPage({super.key});

  static Route<RocketsPage> route() {
    return MaterialPageRoute(
      builder: (context) => const RocketsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RocketCubit(
        context.read<RocketRepository>(),
      )..fetchData(),
      child: const RocketsView(),
    );
  }
}
