// ignore_for_file: public_member_api_docs

class JsonDecodeException implements Exception {
  const JsonDecodeException([this.message]);

  final String? message;

  @override
  String toString() => message ?? 'JsonDecodeException';
}
