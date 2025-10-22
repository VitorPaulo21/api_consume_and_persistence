// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoordinatesAdapter extends TypeAdapter<Coordinates> {
  @override
  final typeId = 4;

  @override
  Coordinates read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coordinates(
      latitude: fields[0] as String,
      longitude: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Coordinates obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.latitude)
      ..writeByte(1)
      ..write(obj.longitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoordinatesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => Coordinates(
  latitude: json['latitude'] as String,
  longitude: json['longitude'] as String,
);

Map<String, dynamic> _$CoordinatesToJson(Coordinates instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
