// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_name.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserNameAdapter extends TypeAdapter<UserName> {
  @override
  final typeId = 1;

  @override
  UserName read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserName(
      title: fields[0] as String,
      first: fields[1] as String,
      last: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserName obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.first)
      ..writeByte(2)
      ..write(obj.last);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserNameAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserName _$UserNameFromJson(Map<String, dynamic> json) => UserName(
  title: json['title'] as String,
  first: json['first'] as String,
  last: json['last'] as String,
);

Map<String, dynamic> _$UserNameToJson(UserName instance) => <String, dynamic>{
  'title': instance.title,
  'first': instance.first,
  'last': instance.last,
};
