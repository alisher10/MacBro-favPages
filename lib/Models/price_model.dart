import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'price_model.g.dart';

@HiveType(typeId: 2)
class Price extends Equatable {
  @HiveField(0)
  final int? price;
  @HiveField(1)
  final int? oldPrice;
  @HiveField(2)
  final int? uzsPrice;
  @HiveField(3)
  final int? secondPrice;
  @HiveField(4)
  final int? secondUzsPrice;

  const Price({
    this.price,
    this.oldPrice,
    this.uzsPrice,
    this.secondPrice,
    this.secondUzsPrice,
  });

  factory Price.fromMap(Map<String, dynamic> data) => Price(
    price: data['price'] as int?,
    oldPrice: data['old_price'] as int?,
    uzsPrice: data['uzs_price'] as int?,
    secondPrice: data['second_price'] as int?,
    secondUzsPrice: data['second_uzs_price'] as int?,
  );

  Map<String, dynamic> toMap() => {
    'price': price,
    'old_price': oldPrice,
    'uzs_price': uzsPrice,
    'second_price': secondPrice,
    'second_uzs_price': secondUzsPrice,
  };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Price].
  factory Price.fromJson(String data) {
    return Price.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Price] to a JSON string.
  String toJson() => json.encode(toMap());

  Price copyWith({
    int? price,
    int? oldPrice,
    int? uzsPrice,
    int? secondPrice,
    int? secondUzsPrice,
  }) {
    return Price(
      price: price ?? this.price,
      oldPrice: oldPrice ?? this.oldPrice,
      uzsPrice: uzsPrice ?? this.uzsPrice,
      secondPrice: secondPrice ?? this.secondPrice,
      secondUzsPrice: secondUzsPrice ?? this.secondUzsPrice,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      price,
      oldPrice,
      uzsPrice,
      secondPrice,
      secondUzsPrice,
    ];
  }
}