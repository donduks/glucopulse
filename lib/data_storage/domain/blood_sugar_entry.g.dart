// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_sugar_entry.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BloodSugarEntryAdapter extends TypeAdapter<BloodSugarEntry> {
  @override
  final int typeId = 0;

  @override
  BloodSugarEntry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BloodSugarEntry(
      value: fields[0] as double,
      dateTime: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, BloodSugarEntry obj) {
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
      other is BloodSugarEntryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
