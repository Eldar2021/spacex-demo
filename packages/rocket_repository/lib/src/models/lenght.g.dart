// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lenght.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Length _$LengthFromJson(Map<String, dynamic> json) => Length(
      meters: (json['meters'] as num).toDouble(),
      feet: (json['feet'] as num).toDouble(),
    );

Map<String, dynamic> _$LengthToJson(Length instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };
