import 'package:currency_exchange/data_source/remote_data_source.dart';
import 'package:currency_exchange/models/exchange_model.dart';
import 'package:currency_exchange/repositories/exchange_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExchangeDataSource extends Mock
    implements ExchangeRetrofitDataSource {}

void main() {
  late ExchangeRepository sut;
  late MockExchangeDataSource dataSource;

  setUp(() {
    dataSource = MockExchangeDataSource();
    sut = ExchangeRepository(exchangeDataSource:dataSource);
  });
  //w group description wpisujemy nazwę metody, którą testujemy

  group('getExchangeModel', (){
  //w tym teście sprawdzamy, czy ta metoda zwraca nam dane z data source czyli nasz model
    test('should return the current exchange rate ', ()async {
      //1
when(()=>dataSource.getExchangeData('USD', 'PLN')).thenAnswer((_) async => ExchangeModel('USD', 'PLN',4.7616));
      //2
final results = await sut.getExchangeModel(from: 'USD', to: 'PLN');
      //3
expect(results, ExchangeModel('USD','PLN', 4.7616));
//w tym teście sprawdzamy, czy ta metoda w repository robi jednego calla do metody w pliku data source
verify(() => dataSource.getExchangeData('USD', 'PLN')).called(1);

    });
  });
}
