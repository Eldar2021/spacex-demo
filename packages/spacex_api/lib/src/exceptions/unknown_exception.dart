// ignore_for_file: public_member_api_docs

class UnknownException implements Exception {
  const UnknownException([this.message]);

  final String? message;

  @override
  String toString() => message ?? 'UnknownException';
}
