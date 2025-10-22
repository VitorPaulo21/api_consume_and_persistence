import 'package:json_annotation/json_annotation.dart';
import 'random_user.dart';

part 'user_api_response.g.dart';

@JsonSerializable()
class UserApiResponse {
  @JsonKey(name: 'results')
  final List<RandomUser> results;

  @JsonKey(name: 'info')
  final Info info;

  const UserApiResponse({required this.results, required this.info});

  factory UserApiResponse.fromJson(Map<String, dynamic> json) =>
      _$UserApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserApiResponseToJson(this);
}

@JsonSerializable()
class Info {
  @JsonKey(name: 'seed')
  final String seed;

  @JsonKey(name: 'results')
  final int results;

  @JsonKey(name: 'page')
  final int page;

  @JsonKey(name: 'version')
  final String version;

  Info({
    required this.seed,
    required this.results,
    required this.page,
    required this.version,
  });

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}
