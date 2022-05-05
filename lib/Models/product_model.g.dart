// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final int typeId = 1;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel(
      id: fields[0] as String?,
      name: fields[1] as String?,
      slug: fields[2] as String?,
      active: fields[3] as bool?,
      image: fields[4] as String?,
      code: fields[5] as String?,
      order: fields[6] as String?,
      cheapestPrice: fields[7] as int?,
      price: fields[8] as Price?,
      discount: fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.slug)
      ..writeByte(3)
      ..write(obj.active)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.code)
      ..writeByte(6)
      ..write(obj.order)
      ..writeByte(7)
      ..write(obj.cheapestPrice)
      ..writeByte(8)
      ..write(obj.price)
      ..writeByte(9)
      ..write(obj.discount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
