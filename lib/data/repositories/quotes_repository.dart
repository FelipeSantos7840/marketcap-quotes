import 'package:crypto_felipesantos/data/datasources/quotes_datasource.dart';
import 'package:crypto_felipesantos/domain/entities/coin.dart';
import 'package:crypto_felipesantos/utils/input_parse.dart';

class QuotesRepository {
  final QuotesDatasource quotesDatasource; //Utilizar Interface

  QuotesRepository({required this.quotesDatasource});

  Future<Map<String, List<Coin>>> getCurrentQuoteCoinsBySymbol(String searchedRaw) async {
    final requestData = await quotesDatasource.getQuotasLatest(searchedRaw);
    final Map<String, List<Coin>> coinQuotes = {};
    List<String> searchedCoins = InputParse.convertSearchRequest(searchedRaw);
    print('LOG 2 | Fez a request');
    if (requestData == null) {
      return {};
    }

    searchedCoins.forEach((searchedSymbol) {
      coinQuotes[searchedSymbol] = [];
      var collectionSymbol = requestData[searchedSymbol];

      if (collectionSymbol != null) {
        if (collectionSymbol is List) {
          collectionSymbol.forEach((item) {
            coinQuotes[searchedSymbol]!.add(Coin.fromMap(item));
          });
        }
      }
      print('${searchedSymbol} | ${coinQuotes[searchedSymbol]!.length}');
    });
    return coinQuotes;
  }
}
