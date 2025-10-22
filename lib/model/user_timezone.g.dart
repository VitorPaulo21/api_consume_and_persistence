// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_timezone.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserTimezoneAdapter extends TypeAdapter<UserTimezone> {
  @override
  final typeId = 5;

  @override
  UserTimezone read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserTimezone(
      offset: fields[0] as String,
      description: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserTimezone obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.offset)
      ..writeByte(1)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserTimezoneAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTimezone _$UserTimezoneFromJson(Map<String, dynamic> json) => UserTimezone(
  offset: json['offset'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$UserTimezoneToJson(UserTimezone instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'description': instance.description,
    };
