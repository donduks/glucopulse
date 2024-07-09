// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_sugar_entry2.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BloodSugarEntry2Adapter extends TypeAdapter<BloodSugarEntry2> {
  @override
  final int typeId = 1;

  @override
  BloodSugarEntry2 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BloodSugarEntry2(
      value: fields[0] as double,
      dateTime: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, BloodSugarEntry2 obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.value)
      ..writeByte(1)
      ..write(obj.dateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BloodSugarEntry2Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
