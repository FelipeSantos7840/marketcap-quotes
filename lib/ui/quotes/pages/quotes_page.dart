import 'package:crypto_felipesantos/data/datasources/quotes_datasource.dart';
import 'package:crypto_felipesantos/data/repositories/quotes_repository.dart';
import 'package:crypto_felipesantos/ui/quotes/view_models/quotes_viewmodel.dart';
import 'package:crypto_felipesantos/ui/quotes/widgets/quote_result.dart';
import 'package:crypto_felipesantos/ui/quotes/widgets/quote_search.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class QuotesPage extends StatefulWidget {
  const QuotesPage({super.key});

  @override
  State<QuotesPage> createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {
  late final QuotesViewmodel _quotesViewmodel;
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _quotesViewmodel = QuotesViewmodel(
      quoteRepository: QuotesRepository(
        quotesDatasource: QuotesDatasource(dio: Dio()),
      ),
    );
    _quotesViewmodel.searchCoinQuotes('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aplicativo Crypto')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QuoteSearch(
              searchController: searchController,
              onSearch: _quotesViewmodel.searchCoinQuotes,
            ),
            Obx((){
              final coinMap = _quotesViewmodel.quotesLatest;
              return QuoteResult(quotesMap: );
            })
          ],
        ),
      ),
    );
  }
}
