import 'package:flutter/material.dart';
import 'package:spacex_api/spacex_api.dart';

class MemberList extends StatelessWidget {
  const MemberList({super.key, required this.members});

  final List<CrewMember> members;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: members.length,
      itemBuilder: (context, index) {
        final member = members[index];
        return ListTile(
          isThreeLine: true,
          onTap: () {},
          leading: CircleAvatar(
            backgroundImage: NetworkImage(member.image),
          ),
          title: Text(member.name),
          subtitle: Text(
            member.agency,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: const Icon(Icons.chevron_right_sharp),
        );
      },
    );
  }
}
