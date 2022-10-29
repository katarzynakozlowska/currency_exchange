// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:currency_exchange/core/enums.dart';
import 'package:currency_exchange/models/exchange_model.dart';
import 'package:currency_exchange/repositories/exchange_repository.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'exchange_state.dart';

class ExchangeCubit extends Cubit<ExchangeState> {
  ExchangeCubit(this._exchangeRepository) : super(const ExchangeState());
  final ExchangeRepository _exchangeRepository;
  //przekazujemy nasze repository

  Future<void> getExchangeRate({
    //zmienne, które wprowadza uytkownik
    required String from,
  }) async {
    emit(const ExchangeState(status: Status.loading));
    //na początku zawsze status loading
    try {
      //tworzymy nową zmienną, która dostarczy nam dane z repository
      final exchangeModel =
          await _exchangeRepository.getExchangeModel(from: from);
      emit(ExchangeState(
        //przypisujemy zmiennej ze state naszą nową zmienną
        model: exchangeModel,
        status: Status.success,
      ));
    } catch (error) {
      emit(
        ExchangeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
