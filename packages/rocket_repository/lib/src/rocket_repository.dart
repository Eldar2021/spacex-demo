// ignore_for_file: public_member_api_docs

import 'package:rocket_repository/src/exception/exception.dart';
import 'package:rocket_repository/src/models/models.dart';
import 'package:spacex_api/spacex_api.dart';

class RocketRepository {
  RocketRepository([SpacexApi? api]) : _api = api ?? SpacexApi();

  final SpacexApi _api;

  Future<List<Rocket>> fetchRockets() async {
    try {
      return _api.getList<Rocket>('/v4/rockets', Rocket.fromJson);
    } catch (e) {
      throw RocketException();
    }
  }
}
