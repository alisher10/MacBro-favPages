import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_db/Models/price_model.dart';

part 'product_model.g.dart';

@HiveType(typeId: 1)
class ProductModel extends Equatable {
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? slug;
  @HiveField(3)
  final bool? active;
  @HiveField(4)
  final String? image;
  @HiveField(5)
  final String? code;
  @HiveField(6)
  final String? order;
  @HiveField(7)
  final int? cheapestPrice;
  @HiveField(8)
  final Price? price;
  @HiveField(9)
  final int? discount;

  const ProductModel({
    this.id,
    this.name,
    this.slug,
    this.active,
    this.image,
    this.code,
    this.order,
    this.cheapestPrice,
    this.price,
    this.discount,
  });

  factory ProductModel.fromMap(Map<String, dynamic> data) => ProductModel(
    id: data['id'] as String?,
    name: data['name'] as String?,
    slug: data['slug'] as String?,
    active: data['active'] as bool?,
    image: data['image'] as String?,
    code: data['code'] as String?,
    order: data['order'] as String?,
    cheapestPrice: data['cheapest_price'] as int?,
    price: data['price'] == null
        ? null
        : Price.fromMap(data['price'] as Map<String, dynamic>),
    discount: data['discount'] as int?,
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'slug': slug,
    'active': active,
    'image': image,
    'code': code,
    'order': order,
    'cheapest_price': cheapestPrice,
    'price': price?.toMap(),
    'discount': discount,
  };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ProductModel].
  factory ProductModel.fromJson(String data) {
    return ProductModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ProductModel] to a JSON string.
  String toJson() => json.encode(toMap());

  ProductModel copyWith({
    String? id,
    String? name,
    String? slug,
    bool? active,
    String? image,
    String? code,
    String? order,
    int? cheapestPrice,
    Price? price,
    int? discount,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      active: active ?? this.active,
      image: image ?? this.image,
      code: code ?? this.code,
      order: order ?? this.order,
      cheapestPrice: cheapestPrice ?? this.cheapestPrice,
      price: price ?? this.price,
      discount: discount ?? this.discount,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      slug,
      active,
      image,
      code,
      order,
      cheapestPrice,
      price,
      discount,
    ];
  }
}