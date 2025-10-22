// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_id.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserIdAdapter extends TypeAdapter<UserId> {
  @override
  final typeId = 9;

  @override
  UserId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserId(name: fields[0] as String, value: fields[1] as String?);
  }

  @override
  void write(BinaryWriter writer, UserId obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserId _$UserIdFromJson(Map<String, dynamic> json) =>
    UserId(name: json['name'] as String, value: json['value'] as String?);

Map<String, dynamic> _$UserIdToJson(UserId instance) => <String, dynamic>{
  'name': instance.name,
  'value': instance.value,
};
