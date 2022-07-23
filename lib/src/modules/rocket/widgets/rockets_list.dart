import 'package:flutter/material.dart';
import 'package:spacex_api/spacex_api.dart';

class RocketList extends StatelessWidget {
  const RocketList({super.key, required this.rockets});

  final List<Rocket> rockets;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rockets.length,
      itemBuilder: (context, index) {
        final rocket = rockets[index];
        return ListTile(
          isThreeLine: true,
          onTap: () {},
          title: Text(rocket.name),
          subtitle: Text(
            rocket.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: const Icon(Icons.chevron_right_sharp),
        );
      },
    );
  }
}
