// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PictureAdapter extends TypeAdapter<Picture> {
  @override
  final typeId = 10;

  @override
  Picture read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Picture(
      large: fields[0] as String,
      medium: fields[1] as String,
      thumbnail: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Picture obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.large)
      ..writeByte(1)
      ..write(obj.medium)
      ..writeByte(2)
      ..write(obj.thumbnail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PictureAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
  large: json['large'] as String,
  medium: json['medium'] as String,
  thumbnail: json['thumbnail'] as String,
);

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
  'large': instance.large,
  'medium': instance.medium,
  'thumbnail': instance.thumbnail,
};
