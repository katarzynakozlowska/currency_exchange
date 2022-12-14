// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exchange_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExchangeState {
  ExchangeModel? get model => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeStateCopyWith<ExchangeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeStateCopyWith<$Res> {
  factory $ExchangeStateCopyWith(
          ExchangeState value, $Res Function(ExchangeState) then) =
      _$ExchangeStateCopyWithImpl<$Res, ExchangeState>;
  @useResult
  $Res call({ExchangeModel? model, Status? status, String? errorMessage});

  $ExchangeModelCopyWith<$Res>? get model;
}

/// @nodoc
class _$ExchangeStateCopyWithImpl<$Res, $Val extends ExchangeState>
    implements $ExchangeStateCopyWith<$Res> {
  _$ExchangeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ExchangeModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExchangeModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ExchangeModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExchangeStateCopyWith<$Res>
    implements $ExchangeStateCopyWith<$Res> {
  factory _$$_ExchangeStateCopyWith(
          _$_ExchangeState value, $Res Function(_$_ExchangeState) then) =
      __$$_ExchangeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExchangeModel? model, Status? status, String? errorMessage});

  @override
  $ExchangeModelCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_ExchangeStateCopyWithImpl<$Res>
    extends _$ExchangeStateCopyWithImpl<$Res, _$_ExchangeState>
    implements _$$_ExchangeStateCopyWith<$Res> {
  __$$_ExchangeStateCopyWithImpl(
      _$_ExchangeState _value, $Res Function(_$_ExchangeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ExchangeState(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ExchangeModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ExchangeState extends _ExchangeState {
  _$_ExchangeState(
      {this.model, this.status = Status.initial, this.errorMessage = ''})
      : super._();

  @override
  final ExchangeModel? model;
  @override
  @JsonKey()
  final Status? status;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'ExchangeState(model: $model, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeState &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeStateCopyWith<_$_ExchangeState> get copyWith =>
      __$$_ExchangeStateCopyWithImpl<_$_ExchangeState>(this, _$identity);
}

abstract class _ExchangeState extends ExchangeState {
  factory _ExchangeState(
      {final ExchangeModel? model,
      final Status? status,
      final String? errorMessage}) = _$_ExchangeState;
  _ExchangeState._() : super._();

  @override
  ExchangeModel? get model;
  @override
  Status? get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeStateCopyWith<_$_ExchangeState> get copyWith =>
      throw _privateConstructorUsedError;
}
