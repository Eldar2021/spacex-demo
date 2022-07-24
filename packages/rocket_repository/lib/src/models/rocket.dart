// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rocket_repository/src/models/models.dart';

part 'rocket.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Rocket extends Equatable {
  const Rocket({
    required this.id,
    required this.name,
    required this.description,
    this.flickrImages = const [],
    required this.height,
    required this.diameter,
    required this.mass,
    this.active,
    this.stages,
    this.boosters,
    this.costPerLaunch,
    this.successRatePct,
    this.firstFlight,
    this.country,
    this.company,
    this.wikipedia,
  });

  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);

  Map<String, dynamic> toJson() => _$RocketToJson(this);

  final String id;
  final String name;
  final String description;
  final Length height;
  final Length diameter;
  final Mass mass;
  final List<String> flickrImages;
  final bool? active;
  final int? stages;
  final int? boosters;
  final int? costPerLaunch;
  final int? successRatePct;
  final DateTime? firstFlight;
  final String? country;
  final String? company;
  final String? wikipedia;

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        height,
        diameter,
        mass,
        flickrImages,
        active,
        stages,
        boosters,
        costPerLaunch,
        successRatePct,
        firstFlight,
        country,
        company,
        wikipedia,
      ];

  @override
  String toString() => 'Rocket($id, $name)';
}
