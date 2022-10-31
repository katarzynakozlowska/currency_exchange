// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeModel _$$_ExchangeModelFromJson(Map<String, dynamic> json) =>
    _$_ExchangeModel(
      json['base_code'] as String,
      json['target_code'] as String,
      (json['conversion_rate'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ExchangeModelToJson(_$_ExchangeModel instance) =>
    <String, dynamic>{
      'base_code': instance.from,
      'target_code': instance.to,
      'conversion_rate': instance.result,
    };
