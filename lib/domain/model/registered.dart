import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'registered.g.dart';

@HiveType(typeId: 8)
@JsonSerializable()
class Registered {
  @HiveField(0)
  @JsonKey(name: 'date')
  final String date;

  @HiveField(1)
  @JsonKey(name: 'age')
  final int age;

  Registered({required this.date, required this.age});

  factory Registered.fromJson(Map<String, dynamic> json) =>
      _$RegisteredFromJson(json);

  Map<String, dynamic> toJson() => _$RegisteredToJson(this);
}
