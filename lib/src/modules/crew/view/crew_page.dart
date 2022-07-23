import 'package:crew_member_repository/crew_member_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_demo/src/modules/modules.dart';

import 'crew_view.dart';

class CrewPage extends StatelessWidget {
  const CrewPage({super.key});

  static Route<CrewPage> route() {
    return MaterialPageRoute(
      builder: (context) => const CrewPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CrewCubit(
        context.read<CrewMemberRepository>(),
      )..fetchData(),
      child: const CrewView(),
    );
  }
}
