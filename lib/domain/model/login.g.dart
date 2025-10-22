// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginAdapter extends TypeAdapter<Login> {
  @override
  final typeId = 6;

  @override
  Login read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Login(
      uuid: fields[0] as String,
      username: fields[1] as String,
      password: fields[2] as String,
      salt: fields[3] as String,
      md5: fields[4] as String,
      sha1: fields[5] as String,
      sha256: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Login obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.salt)
      ..writeByte(4)
      ..write(obj.md5)
      ..writeByte(5)
      ..write(obj.sha1)
      ..writeByte(6)
      ..write(obj.sha256);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
  uuid: json['uuid'] as String,
  username: json['username'] as String,
  password: json['password'] as String,
  salt: json['salt'] as String,
  md5: json['md5'] as String,
  sha1: json['sha1'] as String,
  sha256: json['sha256'] as String,
);

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
  'uuid': instance.uuid,
  'username': instance.username,
  'password': instance.password,
  'salt': instance.salt,
  'md5': instance.md5,
  'sha1': instance.sha1,
  'sha256': instance.sha256,
};
