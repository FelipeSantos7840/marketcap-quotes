// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Quote {
  final double price;
  final double volume_24h;
  final DateTime last_updated;

  Quote(this.price, this.volume_24h, this.last_updated);
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'price': price,
      'volume_24h': volume_24h,
      'last_updated': last_updated.millisecondsSinceEpoch,
    };
  }

  factory Quote.fromMap(Map<String, dynamic> map) {
    return Quote(
      map['price'] != null?(map['price'] as num).toDouble() : 0,
      map['volume_24h'] != null?(map['volume_24h'] as num).toDouble() : 0,
      DateTime.parse(map['last_updated']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Quote.fromJson(String source) => Quote.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Quote(price: $price, volume_24h: $volume_24h, last_updated: $last_updated)';
}
