// ignore_for_file: public_member_api_docs

class HttpRequaestException implements Exception {
  const HttpRequaestException([this.message]);

  final String? message;

  @override
  String toString() => message ?? 'HttpRequaestException';
}
