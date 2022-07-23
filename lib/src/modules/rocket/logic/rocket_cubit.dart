import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rocket_repository/rocket_repository.dart';
import 'package:spacex_api/spacex_api.dart';
import 'package:spacex_demo/src/utils/utils.dart';

part 'rocket_state.dart';

class RocketCubit extends Cubit<RocketState> {
  RocketCubit(this.repository) : super(const RocketState());

  final RocketRepository repository;

  Future<void> fetchData() async {
    emit(state.copyWith(status: FetchStatus.loading));

    try {
      final rockets = await repository.fetchRockets();
      emit(RocketState(status: FetchStatus.success, rockets: rockets));
    } catch (e) {
      emit(state.copyWith(status: FetchStatus.error));
    }
  }
}
