// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dob.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DobAdapter extends TypeAdapter<Dob> {
  @override
  final typeId = 7;

  @override
  Dob read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Dob(date: fields[0] as String, age: (fields[1] as num).toInt());
  }

  @override
  void write(BinaryWriter writer, Dob obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DobAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dob _$DobFromJson(Map<String, dynamic> json) =>
    Dob(date: json['date'] as String, age: (json['age'] as num).toInt());

Map<String, dynamic> _$DobToJson(Dob instance) => <String, dynamic>{
  'date': instance.date,
  'age': instance.age,
};
