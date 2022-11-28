
import 'package:bloc_test/bloc_test.dart';
import 'package:currency_exchange/core/enums.dart';
import 'package:currency_exchange/features/cubit/exchange_cubit.dart';
import 'package:currency_exchange/models/exchange_model.dart';
import 'package:currency_exchange/repositories/exchange_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExchangeRepository extends Mock implements ExchangeRepository{}

void main (){
late ExchangeCubit sut;
late MockExchangeRepository repository;

setUp((){
  repository = MockExchangeRepository();
  sut = ExchangeCubit(exchangeRepository: repository);
});
group('getExchangeRate', (){
  group('success', (){
setUp((){
  when((() =>repository.getExchangeModel(from: 'USD', to: 'PLN') )).thenAnswer((_) async =>ExchangeModel('USD', 'PLN', 4.7616));
});

 blocTest<ExchangeCubit, ExchangeState>('Emits status loading, then status success and result as ExchangeModel ', build:() => sut,
 act: (cubit)=>cubit.getExchangeRate(from: 'USD', to: 'PLN'),
 expect:()=> [
  ExchangeState(status: Status.loading),
  ExchangeState(
        //przypisujemy zmiennej ze state naszą nową zmienną
        model: ExchangeModel('USD', 'PLN', 4.7616),
        status: Status.success,
      )
 ]);
 });
  group('failure', (){
setUp((){
  when((() =>repository.getExchangeModel(from: 'USD', to: 'PLN') )).thenThrow(Exception('test error'));
});

 blocTest<ExchangeCubit, ExchangeState>('Emits status loading, then status error and error message content ', build:() => sut,
 act: (cubit)=>cubit.getExchangeRate(from: 'USD', to: 'PLN'),
 expect:()=> [
  ExchangeState(status: Status.loading),
  ExchangeState(
        //w zawartości error message musimy dodać na początku Exception: , bo korzystamy w ccubicie z "toString()"
        errorMessage: 'Exception: test error',
        status: Status.error,
      )
 ]);
 });
});
}