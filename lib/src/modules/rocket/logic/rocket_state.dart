part of 'rocket_cubit.dart';

class RocketState extends Equatable {
  const RocketState({this.status = FetchStatus.initial, this.rockets});

  final FetchStatus status;
  final List<Rocket>? rockets;

  @override
  List<Object?> get props => [status, rockets];

  RocketState copyWith({FetchStatus? status, List<Rocket>? rockets}) {
    return RocketState(
      status: status ?? this.status,
      rockets: rockets ?? this.rockets,
    );
  }
}
