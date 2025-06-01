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
          '${coin.symbol} | Cotação USD: ${coin.quote.price.toStringAsFixed(2)} Cotação BRL: ${(coin.quote.price * 5.72).toStringAsFixed(2)}'
        ),
        trailing: Text('Última Atualização: ${coin.quote.last_updated}'),
      ),
    );
  }
}