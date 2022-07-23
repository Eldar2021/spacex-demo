import 'package:flutter/material.dart';

class SpacexCategoryCard extends StatelessWidget {
  const SpacexCategoryCard({
    super.key,
    required this.onTap,
    required this.title,
    required this.image,
  });

  final VoidCallback onTap;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FractionallySizedBox(
            heightFactor: 1 / 5,
            child: SizedBox(
              width: double.infinity,
              child: ColoredBox(
                color: Colors.black.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
