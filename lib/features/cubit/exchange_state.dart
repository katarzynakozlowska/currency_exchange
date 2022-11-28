part of 'exchange_cubit.dart';

@freezed
class ExchangeState with _$ExchangeState {
  ExchangeState._();
  factory ExchangeState({
    ExchangeModel? model,
    @Default(Status.initial) Status? status,
    @Default('') String? errorMessage,
  }) = _ExchangeState;
}
