// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RegisteredAdapter extends TypeAdapter<Registered> {
  @override
  final typeId = 8;

  @override
  Registered read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Registered(
      date: fields[0] as String,
      age: (fields[1] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, Registered obj) {
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
      other is RegisteredAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Registered _$RegisteredFromJson(Map<String, dynamic> json) =>
    Registered(date: json['date'] as String, age: (json['age'] as num).toInt());

Map<String, dynamic> _$RegisteredToJson(Registered instance) =>
    <String, dynamic>{'date': instance.date, 'age': instance.age};
