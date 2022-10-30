import 'package:currency_exchange/data_source/remote_data_source.dart';
import 'package:currency_exchange/models/exchange_model.dart';

class ExchangeRepository {
  ExchangeRepository(this._exchangeDataSource);
  final ExchangeDataSource _exchangeDataSource;

  Future<ExchangeModel?> getExchangeModel(
      {required String from, required String to}) async {
    final json = await _exchangeDataSource.getExchangData(
      from: from,
      to: to,
    );
    if (json == null) {
      return null;
    }

    return ExchangeModel.fromJson(json);
  }
}
