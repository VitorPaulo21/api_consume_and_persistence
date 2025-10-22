// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StreetAdapter extends TypeAdapter<Street> {
  @override
  final typeId = 3;

  @override
  Street read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Street(
      number: (fields[0] as num).toInt(),
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Street obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StreetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Street _$StreetFromJson(Map<String, dynamic> json) => Street(
  number: (json['number'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$StreetToJson(Street instance) => <String, dynamic>{
  'number': instance.number,
  'name': instance.name,
};
