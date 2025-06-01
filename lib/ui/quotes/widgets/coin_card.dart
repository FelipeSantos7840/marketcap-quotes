import 'package:crypto_felipesantos/domain/entities/coin.dart';
import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  final Coin coin;
  const CoinCard({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(coin.name),
        subtitle: Text(
          '${coin.symbol} \nUSD: ${coin.quote.price.toStringAsFixed(2)}\nBRL: ${(coin.quote.price * 5.72).toStringAsFixed(2)}\nAtualização: ${coin.quote.last_updated.toLocal()}',
        ),
        onTap: () => showCoinDialog(context),
      ),
    );
  }

  void showCoinDialog(BuildContext context) {
    showDialog(context: context, builder: (_) => AlertDialog(
      title: Text(coin.name),
      content: Text('Símbolo: ${coin.symbol}\n'),
    ));
  }
}
