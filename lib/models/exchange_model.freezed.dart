// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exchange_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeModel _$ExchangeModelFromJson(Map<String, dynamic> json) {
  return _ExchangeModel.fromJson(json);
}

/// @nodoc
mixin _$ExchangeModel {
  @JsonKey(name: 'base_code')
  String get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_code')
  String get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversion_rate')
  double get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeModelCopyWith<ExchangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeModelCopyWith<$Res> {
  factory $ExchangeModelCopyWith(
          ExchangeModel value, $Res Function(ExchangeModel) then) =
      _$ExchangeModelCopyWithImpl<$Res, ExchangeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_code') String from,
      @JsonKey(name: 'target_code') String to,
      @JsonKey(name: 'conversion_rate') double result});
}

/// @nodoc
class _$ExchangeModelCopyWithImpl<$Res, $Val extends ExchangeModel>
    implements $ExchangeModelCopyWith<$Res> {
  _$ExchangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeModelCopyWith<$Res>
    implements $ExchangeModelCopyWith<$Res> {
  factory _$$_ExchangeModelCopyWith(
          _$_ExchangeModel value, $Res Function(_$_ExchangeModel) then) =
      __$$_ExchangeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_code') String from,
      @JsonKey(name: 'target_code') String to,
      @JsonKey(name: 'conversion_rate') double result});
}

/// @nodoc
class __$$_ExchangeModelCopyWithImpl<$Res>
    extends _$ExchangeModelCopyWithImpl<$Res, _$_ExchangeModel>
    implements _$$_ExchangeModelCopyWith<$Res> {
  __$$_ExchangeModelCopyWithImpl(
      _$_ExchangeModel _value, $Res Function(_$_ExchangeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? result = null,
  }) {
    return _then(_$_ExchangeModel(
      null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ExchangeModel implements _ExchangeModel {
  _$_ExchangeModel(
      @JsonKey(name: 'base_code') this.from,
      @JsonKey(name: 'target_code') this.to,
      @JsonKey(name: 'conversion_rate') this.result);

  factory _$_ExchangeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeModelFromJson(json);

  @override
  @JsonKey(name: 'base_code')
  final String from;
  @override
  @JsonKey(name: 'target_code')
  final String to;
  @override
  @JsonKey(name: 'conversion_rate')
  final double result;

  @override
  String toString() {
    return 'ExchangeModel(from: $from, to: $to, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeModel &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeModelCopyWith<_$_ExchangeModel> get copyWith =>
      __$$_ExchangeModelCopyWithImpl<_$_ExchangeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeModelToJson(
      this,
    );
  }
}

abstract class _ExchangeModel implements ExchangeModel {
  factory _ExchangeModel(
      @JsonKey(name: 'base_code') final String from,
      @JsonKey(name: 'target_code') final String to,
      @JsonKey(name: 'conversion_rate') final double result) = _$_ExchangeModel;

  factory _ExchangeModel.fromJson(Map<String, dynamic> json) =
      _$_ExchangeModel.fromJson;

  @override
  @JsonKey(name: 'base_code')
  String get from;
  @override
  @JsonKey(name: 'target_code')
  String get to;
  @override
  @JsonKey(name: 'conversion_rate')
  double get result;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeModelCopyWith<_$_ExchangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
