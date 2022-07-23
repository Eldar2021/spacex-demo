import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_demo/src/src.dart';

import '../widgets/rockets_list.dart';

class RocketsView extends StatelessWidget {
  const RocketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.rocketsAppBarTitle),
      ),
      body: Center(
        child: BlocBuilder<RocketCubit, RocketState>(
          builder: (context, state) {
            if (state.status == FetchStatus.initial) {
              return const FetchInitialWidget();
            } else if (state.status == FetchStatus.loading) {
              return const FetchLoadingWidget();
            } else if (state.status == FetchStatus.success) {
              return RocketList(rockets: state.rockets ?? []);
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
