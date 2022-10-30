class ExchangeModel {
  ExchangeModel({required this.from, required this.to,required this.result});
  //wszystkie zmienne, które są wprowadzane i dostarczane z bazy
  final String from;
  final String to;
  final double result;

  ExchangeModel.fromJson(Map<String, dynamic> json)
      : from = json['base_code'],
      to=json['target_code'],
        result = json['conversion_rate'] + 0.0;
}
