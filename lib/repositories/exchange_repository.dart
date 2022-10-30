import 'package:currency_exchange/models/exchange_model.dart';
import 'package:dio/dio.dart';

class ExchangeRepository {
  //wszystkie dane, które wprowadza uytkownik--> from
  Future<ExchangeModel?> getExchangeModel({required String from}) async {
    //https://v6.exchangerate-api.com/v6/1194b9f1153fcdb162219662/latest/USD
    //musimy przetransferować format dynamic, który przychodzi od dio do map string, dynamic
    //przypisujemy nową zmienną dla metody get do dio
    final response = await Dio().get<Map<String, dynamic>>(
      'https://v6.exchangerate-api.com/v6/1194b9f1153fcdb162219662/latest/$from',
    );
    //nowa zmienna dla odpowiedzi z dio
    //response.data to zmienna od data source, orginalna, musimy jej przyporządkować nową zmienną
    final responseData = response.data;
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
