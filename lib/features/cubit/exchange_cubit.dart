// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:currency_exchange/core/enums.dart';
import 'package:currency_exchange/models/exchange_model.dart';
import 'package:currency_exchange/repositories/exchange_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: depend_on_referenced_packages
part 'exchange_state.dart';
part 'exchange_cubit.freezed.dart';

class ExchangeCubit extends Cubit<ExchangeState> {
  ExchangeCubit({required this.exchangeRepository}) : super(ExchangeState());
  final ExchangeRepository exchangeRepository;

  Future<void> getExchangeRate({
    required String from,
    required String to,
  }) async {
    emit(ExchangeState(status: Status.loading));

    try {
      final exchangeModel = await exchangeRepository.getExchangeModel(
        from: from,
        to: to,
      );
      emit(ExchangeState(
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
