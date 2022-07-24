// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lenght.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Length extends Equatable {
  const Length({required this.meters, required this.feet});

  factory Length.fromJson(Map<String, dynamic> json) => _$LengthFromJson(json);

  Map<String, dynamic> toJson() => _$LengthToJson(this);

  final double meters;
  final double feet;

  @override
  List<Object?> get props => [meters, feet];

  @override
  String toString() => 'Length($meters m, $feet ft)';
}
