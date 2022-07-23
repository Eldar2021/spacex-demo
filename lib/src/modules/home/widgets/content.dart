import 'package:flutter/material.dart';
import 'package:spacex_demo/src/src.dart';

import 'spacex_category_card.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          _CardItem(
            child: SpacexCategoryCard(
              image: Assets.images.imgSpacexRocket.path,
              title: context.l10n.rocketSpaceXTileTitle,
              onTap: () => Navigator.of(context).push(RocketsPage.route()),
            ),
          ),
          _CardItem(
            child: SpacexCategoryCard(
              image: Assets.images.imgSpacexCrew.path,
              title: context.l10n.crewSpaceXTileTitle,
              onTap: () => Navigator.of(context).push(CrewPage.route()),
            ),
          ),
        ],
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  // ignore: unused_element
  const _CardItem({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: child,
      ),
    );
  }
}
