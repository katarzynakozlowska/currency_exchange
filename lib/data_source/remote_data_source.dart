import 'package:dio/dio.dart';

class ExchangeDataSource {
  //wszystkie dane, które wprowadza uytkownik--> from
  Future<Map<String, dynamic>?> getExchangData({required String from}) async {
    //https://v6.exchangerate-api.com/v6/1194b9f1153fcdb162219662/latest/USD
    //musimy przetransferować format dynamic, który przychodzi od dio do map string, dynamic
    //przypisujemy nową zmienną dla metody get do dio
    final response = await Dio().get<Map<String, dynamic>>(
      'https://v6.exchangerate-api.com/v6/1194b9f1153fcdb162219662/latest/$from',
    );

    //response.data to zmienna od data source, orginalna, musimy jej przyporządkować nową zmienną
    return response.data;
  }
}
