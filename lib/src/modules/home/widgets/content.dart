import 'package:flutter/material.dart';
import 'package:spacex_demo/src/modules/home/widgets/spacex_category_card.dart';

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
              image: '',
              title: '',
              onTap: () {},
            ),
          ),

          _CardItem(
            child: SpacexCategoryCard(
              image: '',
              title: '',
              onTap: () {},
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
