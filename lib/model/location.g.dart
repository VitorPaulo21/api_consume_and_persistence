// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationAdapter extends TypeAdapter<Location> {
  @override
  final typeId = 2;

  @override
  Location read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Location(
      street: fields[0] as Street,
      city: fields[1] as String,
      state: fields[2] as String,
      country: fields[3] as String,
      postcode: fields[4] as dynamic,
      coordinates: fields[5] as Coordinates,
      timezone: fields[6] as UserTimezone,
    );
  }

  @override
  void write(BinaryWriter writer, Location obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.street)
      ..writeByte(1)
      ..write(obj.city)
      ..writeByte(2)
      ..write(obj.state)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.postcode)
      ..writeByte(5)
      ..write(obj.coordinates)
      ..writeByte(6)
      ..write(obj.timezone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
  street: Street.fromJson(json['street'] as Map<String, dynamic>),
  city: json['city'] as String,
  state: json['state'] as String,
  country: json['country'] as String,
  postcode: json['postcode'],
  coordinates: Coordinates.fromJson(
    json['coordinates'] as Map<String, dynamic>,
  ),
  timezone: UserTimezone.fromJson(json['timezone'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'street': instance.street,
  'city': instance.city,
  'state': instance.state,
  'country': instance.country,
  'postcode': instance.postcode,
  'coordinates': instance.coordinates,
  'timezone': instance.timezone,
};
