import 'package:currency_exchange/data_source/remote_data_source.dart';
import 'package:currency_exchange/models/exchange_model.dart';

class ExchangeRepository {
  ExchangeRepository({required this.exchangeDataSource});
  final ExchangeRetrofitDataSource exchangeDataSource;

  Future<ExchangeModel?> getExchangeModel(
      {required String from, required String to}) async {
    return exchangeDataSource.getExchangeData(
      from,
      to,
    );

    //teraz mozemy sobie zrobić returna zamiast awaitować na dane
  }
}
