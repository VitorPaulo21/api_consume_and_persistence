// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RandomUserAdapter extends TypeAdapter<RandomUser> {
  @override
  final typeId = 0;

  @override
  RandomUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RandomUser(
      gender: fields[0] as String,
      name: fields[1] as UserName,
      location: fields[2] as Location,
      email: fields[3] as String,
      login: fields[4] as Login,
      dob: fields[5] as Dob,
      registered: fields[6] as Registered,
      phone: fields[7] as String,
      cell: fields[8] as String,
      id: fields[9] as UserId,
      picture: fields[10] as Picture,
      nat: fields[11] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RandomUser obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.gender)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.location)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.login)
      ..writeByte(5)
      ..write(obj.dob)
      ..writeByte(6)
      ..write(obj.registered)
      ..writeByte(7)
      ..write(obj.phone)
      ..writeByte(8)
      ..write(obj.cell)
      ..writeByte(9)
      ..write(obj.id)
      ..writeByte(10)
      ..write(obj.picture)
      ..writeByte(11)
      ..write(obj.nat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RandomUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RandomUser _$RandomUserFromJson(Map<String, dynamic> json) => RandomUser(
  gender: json['gender'] as String,
  name: UserName.fromJson(json['name'] as Map<String, dynamic>),
  location: Location.fromJson(json['location'] as Map<String, dynamic>),
  email: json['email'] as String,
  login: Login.fromJson(json['login'] as Map<String, dynamic>),
  dob: Dob.fromJson(json['dob'] as Map<String, dynamic>),
  registered: Registered.fromJson(json['registered'] as Map<String, dynamic>),
  phone: json['phone'] as String,
  cell: json['cell'] as String,
  id: UserId.fromJson(json['id'] as Map<String, dynamic>),
  picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
  nat: json['nat'] as String,
);

Map<String, dynamic> _$RandomUserToJson(RandomUser instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'location': instance.location,
      'email': instance.email,
      'login': instance.login,
      'dob': instance.dob,
      'registered': instance.registered,
      'phone': instance.phone,
      'cell': instance.cell,
      'id': instance.id,
      'picture': instance.picture,
      'nat': instance.nat,
    };
