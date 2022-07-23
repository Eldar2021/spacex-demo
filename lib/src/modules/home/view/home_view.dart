import 'package:flutter/material.dart';
import 'package:spacex_demo/src/src.dart';

import '../widgets/home_widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.homeAppBarTitle),
      ),
      body: const Center(child: Content()),
    );
  }
}
