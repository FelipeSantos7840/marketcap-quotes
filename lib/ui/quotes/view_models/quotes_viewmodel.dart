import 'package:crypto_felipesantos/data/repositories/quotes_repository.dart';
import 'package:crypto_felipesantos/domain/entities/coin.dart';
import 'package:get/get.dart';

class QuotesViewmodel extends GetxController {
  final QuotesRepository quoteRepository; //Utilizar Interface

  RxMap<String, List<Coin>> _quotesLatest = <String, List<Coin>>{}.obs;
  get quotesLatest => _quotesLatest;

  final RxBool _isLoading = false.obs;
  RxBool get isLoading => _isLoading;

  QuotesViewmodel({required this.quoteRepository});

  searchCoinQuotes(String searchedRaw) async {
    _isLoading.value = true;
    searchedRaw = validateSearchText(searchedRaw);
    print('LOG 1 | $searchedRaw');
    final response = await quoteRepository.getCurrentQuoteCoinsBySymbol(
      searchedRaw,
    );

    _quotesLatest.assignAll(response);
    _isLoading.value = false;
  }

  String validateSearchText(String searchedRaw) {
    final regex = RegExp(r'^[A-Z]{2,10}(,[A-Z]{2,10})*$');
    if (searchedRaw.isNotEmpty && regex.hasMatch(searchedRaw)) {
      return searchedRaw;
    } else {
      return 'BTC,ETH,SOL,BNB,BCH,MKR,AAVE,DOT,SUI,ADA,XRP,TIA,NEO,NEAR,PENDLE,RENDER,LINK,TON,XAI,SEI,IMX,ETHFI,UMA,SUPER,FET,USUAL,GALA,PAAL,AERO';
    }
  }
}
