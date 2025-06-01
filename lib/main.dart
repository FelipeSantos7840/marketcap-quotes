
import 'package:crypto_felipesantos/ui/quotes/pages/quotes_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CoinMarket());

class CoinMarket extends StatelessWidget {
  const CoinMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuotesPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

