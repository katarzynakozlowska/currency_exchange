import 'package:currency_exchange/models/exchange_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_data_source.g.dart';

@RestApi(baseUrl: "https://v6.exchangerate-api.com/v6/1194b9f1153fcdb162219662")
abstract class ExchangeRetrofitDataSource {
  factory ExchangeRetrofitDataSource(Dio dio, {String baseUrl}) =
      _ExchangeRetrofitDataSource;

  @GET("/pair/{from}/{to}")
  Future<ExchangeModel> getExchangeData(
    
      @Path("from") String from, @Path("to") String to,);
}

//class ExchangeDataSource {
  //Future<Map<String, dynamic>?> getExchangData(
     // {required String from, required String to}) async {
   // try {
     // final response = await Dio().get<Map<String, dynamic>>(
       // 'https://v6.exchangerate-api.com/v6/1194b9f1153fcdb162219662/pair/$from/$to',
     // );

     // return response.data;
    //} on DioError catch (error) {
      //throw Exception(error.response?.data['result'] ?? 'Unknown Problem');
   // }
  //}
//}
