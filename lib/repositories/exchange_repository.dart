import 'package:currency_exchange/data_source/remote_data_source.dart';
import 'package:currency_exchange/models/exchange_model.dart';


class ExchangeRepository {
  ExchangeRepository(this._exchangeDataSource);
  final ExchangeDataSource _exchangeDataSource;

  Future<ExchangeModel?> getExchangeModel({required String from}) async {
    final responseData = await _exchangeDataSource.getExchangData(from: from);
    if (responseData == null) {
      return null;
    }
    {
      final from = responseData['base_code'] as String;
      final result = (responseData['conversion_rates']['USD'] + 0.0) as double;

      return ExchangeModel(from: from, result: result);
    }
  }
}
