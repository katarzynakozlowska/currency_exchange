import 'package:freezed_annotation/freezed_annotation.dart';
part 'exchange_model.g.dart';
part 'exchange_model.freezed.dart';

@freezed
class ExchangeModel with _$ExchangeModel {
  @JsonSerializable(explicitToJson: true)
  factory ExchangeModel(
    @JsonKey(name: 'base_code') String from,
    @JsonKey(name: 'target_code') String to,
    @JsonKey(name: 'conversion_rate') double result,
  ) = _ExchangeModel;

  factory ExchangeModel.fromJson(Map<String, dynamic> json) =>
      _$ExchangeModelFromJson(json);
}


