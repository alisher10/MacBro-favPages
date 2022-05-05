// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PriceAdapter extends TypeAdapter<Price> {
  @override
  final int typeId = 2;

  @override
  Price read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Price(
      price: fields[0] as int?,
      oldPrice: fields[1] as int?,
      uzsPrice: fields[2] as int?,
      secondPrice: fields[3] as int?,
      secondUzsPrice: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Price obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.price)
      ..writeByte(1)
      ..write(obj.oldPrice)
      ..writeByte(2)
      ..write(obj.uzsPrice)
      ..writeByte(3)
      ..write(obj.secondPrice)
      ..writeByte(4)
      ..write(obj.secondUzsPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
