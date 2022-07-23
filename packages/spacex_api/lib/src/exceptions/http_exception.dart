// ignore_for_file: public_member_api_docs

class HttpException implements Exception {
  const HttpException([this.message]);

  final String? message;

  @override
  String toString() => message ?? 'HttpException';
}
