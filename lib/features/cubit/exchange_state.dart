part of 'exchange_cubit.dart';

@immutable
//w stejcie wywołujemy nową zmienną dla modelu, dla enuma i error, nie dajemy required
class ExchangeState {
  const ExchangeState(
      {this.model, this.status = Status.initial, this.errorMessage});
  final ExchangeModel? model;
  final Status status;
  final String? errorMessage;
}
