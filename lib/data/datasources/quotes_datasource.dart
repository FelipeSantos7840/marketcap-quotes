import 'package:dio/dio.dart';

class QuotesDatasource {
  final Dio dio; 

  QuotesDatasource({required this.dio});

  getQuotasLatest (String filterQuota) async {
    try{
    final result = await dio.get(
      'https://pro-api.coinmarketcap.com/v2/cryptocurrency/quotes/latest?symbol=$filterQuota',
      options: Options(
        headers: {
          'X-CMC_PRO_API_KEY': 'd8dcea9e-e17f-46c0-8e63-195baaa99afc'
        }
      )
      );
    if (result.statusCode == 200) {
      return result.data['data'];
    }
    return null;
    } catch (e) {
      return null;
    }
  }
}