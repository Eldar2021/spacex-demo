// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:spacex_api/src/exceptions/exceptions.dart';
import 'package:spacex_api/src/models/models.dart';

class SpacexApi {
  SpacexApi([http.Client? client]) : _client = client ?? http.Client();

  @visibleForTesting
  static const authority = 'api.spacexdata.com';

  final http.Client _client;

  Future<List<Rocket>> getRockets() async {
    return _getList<Rocket>('/v4/rockets', Rocket.fromJson);
  }

  Future<List<CrewMember>> getCrews() async {
    return _getList<CrewMember>('/v4/crew', CrewMember.fromJson);
  }

  Future<List<T>> _getList<T>(
    String url,
    T Function(Map<String, dynamic> json) fromJson,
  ) async {
    final uri = Uri.https(authority, url);
    try {
      final response = await _client.get(uri);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data is List) {
          return data.map((i) => fromJson(i as Map<String, dynamic>)).toList();
        } else {
          final item = fromJson(data as Map<String, dynamic>);
          return [item];
        }
      } else {
        throw const HttpRequaestException();
      }
    } catch (e) {
      throw HttpException(e.toString());
    }
  }
}
