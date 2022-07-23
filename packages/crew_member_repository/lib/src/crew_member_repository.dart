// ignore_for_file: public_member_api_docs

import 'package:crew_member_repository/src/exception/exception.dart';
import 'package:spacex_api/spacex_api.dart';

class CrewMemberRepository {
  CrewMemberRepository([SpacexApi? api]) : _api = api ?? SpacexApi();

  final SpacexApi _api;

  Future<List<CrewMember>> fetchCrews() async {
    try {
      return _api.getCrews();
    } catch (e) {
      throw CrewMemberException(e.toString());
    }
  }
}
