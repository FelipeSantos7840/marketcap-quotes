import 'package:crypto_felipesantos/domain/entities/coin.dart';
import 'package:crypto_felipesantos/ui/quotes/widgets/coin_card.dart';
import 'package:flutter/material.dart';

class QuoteResult extends StatelessWidget {
  final Map<String, List<Coin>> quotesMap;

  const QuoteResult({super.key, required this.quotesMap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quotesMap.length,
      itemBuilder: (context, index) {
        final key = quotesMap.keys.elementAt(index);
        final coinList = quotesMap[key]!;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                key,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            ...coinList.map((coin) => CoinCard(coin: coin)).toList(),
          ],
        );
      },
    );
  }
}
