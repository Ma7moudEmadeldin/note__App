// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_Model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class noteModelAdapter extends TypeAdapter<note_Model> {
  @override
  final int typeId = 0;

  @override
  note_Model read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return note_Model(
      title: fields[0] as String,
      subtitle: fields[1] as String,
      date: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, note_Model obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.subtitle)
      ..writeByte(2)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is noteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
