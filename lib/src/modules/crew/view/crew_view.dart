import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_demo/src/src.dart';

import '../widgets/crew_widgets.dart';

class CrewView extends StatelessWidget {
  const CrewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.crewAppBarTitle),
      ),
      body: Center(
        child: BlocBuilder<CrewCubit, CrewState>(
          builder: (context, state) {
            if (state.status == FetchStatus.initial) {
              return const FetchInitialWidget();
            } else if (state.status == FetchStatus.loading) {
              return const FetchLoadingWidget();
            } else if (state.status == FetchStatus.success) {
              return MemberList(members: state.members ?? []);
            } else if (state.status == FetchStatus.error) {
              return const FetchErrorWidget();
            } else {
              return const FetchAnotherWidget();
            }
          },
        ),
      ),
    );
  }
}
