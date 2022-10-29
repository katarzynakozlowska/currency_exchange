import 'package:currency_exchange/models/exchange_model.dart';

class ExchangeRepository {
  //wszystkie dane, które wprowadza uytkownik--> from
  Future<ExchangeModel?> getExchangeModel({required String from}) async {
    return ExchangeModel(from: 'USD', result: 3.5);
  }
}
