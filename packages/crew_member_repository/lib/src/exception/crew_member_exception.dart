// ignore_for_file: public_member_api_docs

class CrewMemberException implements Exception {
  const CrewMemberException([this.message]);

  final String? message;

  @override
  String toString() => message ?? 'CrewMemberException';
}
