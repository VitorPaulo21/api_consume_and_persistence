// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserApiResponse _$UserApiResponseFromJson(Map<String, dynamic> json) =>
    UserApiResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => RandomUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserApiResponseToJson(UserApiResponse instance) =>
    <String, dynamic>{'results': instance.results, 'info': instance.info};

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
  seed: json['seed'] as String,
  results: (json['results'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  version: json['version'] as String,
);

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
  'seed': instance.seed,
  'results': instance.results,
  'page': instance.page,
  'version': instance.version,
};
