import 'package:currency_exchange/data_source/remote_data_source.dart';
import 'package:currency_exchange/models/exchange_model.dart';

class ExchangeRepository {
  ExchangeRepository(this._exchangeDataSource);
  final ExchangeRetrofitDataSource _exchangeDataSource;

  Future<ExchangeModel?> getExchangeModel(
      {required String from, required String to}) async {
    return _exchangeDataSource.getExchangeData(
      from,
      to,
    );

   //teraz mozemy sobie zrobić returna zamiast awaitować na dane
  }
}
