import 'package:bloc/bloc.dart';
import 'package:crew_member_repository/crew_member_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:spacex_api/spacex_api.dart';

import '../../../src.dart';

part 'crew_state.dart';

class CrewCubit extends Cubit<CrewState> {
  CrewCubit(this.repository) : super(const CrewState());

  final CrewMemberRepository repository;

  Future<void> fetchData() async {
    emit(state.copyWith(status: FetchStatus.loading));

    try {
      final members = await repository.fetchCrews();
      emit(CrewState(status: FetchStatus.success, members: members));
    } catch (e) {
      emit(state.copyWith(status: FetchStatus.error));
    }
  }
}
