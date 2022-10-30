class ExchangeModel {
  ExchangeModel({required this.from, required this.result});
  //wszystkie zmienne, które są wprowadzane i dostarczane z bazy
  final String from;
  final double result;

  ExchangeModel.fromJson(Map<String, dynamic> json)
      : from = json['base_code'],
        result = json['conversion_rates']['USD'] + 0.0;
}
