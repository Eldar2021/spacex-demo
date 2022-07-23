// ignore_for_file: public_member_api_docs

class JsonDeserializationException implements Exception {
  const JsonDeserializationException([this.message]);

  final String? message;

  @override
  String toString() => message ?? 'JsonDeserializationException';
}
