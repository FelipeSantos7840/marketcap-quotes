// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:crypto_felipesantos/domain/entities/quote.dart';

class Coin {
  final int id;
  final String name;
  final String symbol;
  final String slug;
  final int is_active;
  final Quote quote;
  final DateTime date_added;
  
  Coin({
    required this.id,
    required this.name,
    required this.symbol,
    required this.slug,
    required this.is_active,
    required this.quote,
    required this.date_added
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'symbol': symbol,
      'slug': slug,
      'is_active': is_active,
      'quote': quote.toMap(),
      'date_added': date_added.millisecondsSinceEpoch,
    };
  }

  factory Coin.fromMap(Map<String, dynamic> map) {
    return Coin(
      id: map['id'] as int,
      name: map['name'] as String,
      symbol: map['symbol'] as String,
      slug: map['slug'] as String,
      is_active: map['is_active'] as int,
      quote: Quote.fromMap(map['quote']['USD'] as Map<String,dynamic>),
      date_added: DateTime.parse(map['date_added']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Coin.fromJson(String source) => Coin.fromMap(json.decode(source) as Map<String, dynamic>);
}
