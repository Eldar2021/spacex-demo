part of 'crew_cubit.dart';

class CrewState extends Equatable {
  const CrewState({this.status = FetchStatus.initial, this.members});

  final FetchStatus status;
  final List<CrewMember>? members;

  @override
  List<Object?> get props => [status, members];

  CrewState copyWith({FetchStatus? status, List<CrewMember>? members}) {
    return CrewState(
      status: status ?? this.status,
      members: members ?? this.members,
    );
  }
}
