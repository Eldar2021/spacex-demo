// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mass.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Mass extends Equatable {
  const Mass({required this.kg, required this.lb});

  factory Mass.fromJson(Map<String, dynamic> json) => _$MassFromJson(json);

  Map<String, dynamic> toJson() => _$MassToJson(this);

  final double kg;
  final double lb;

  @override
  List<Object?> get props => [kg, lb];

  @override
  String toString() => 'Mass($kg kg, $lb lb)';
}
