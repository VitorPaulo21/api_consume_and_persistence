import 'package:hive_ce/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dob.g.dart';

@HiveType(typeId: 7)
@JsonSerializable()
class Dob {
  @HiveField(0)
  @JsonKey(name: 'date')
  final String date;

  @HiveField(1)
  @JsonKey(name: 'age')
  final int age;

  Dob({required this.date, required this.age});

  factory Dob.fromJson(Map<String, dynamic> json) => _$DobFromJson(json);

  Map<String, dynamic> toJson() => _$DobToJson(this);
}
