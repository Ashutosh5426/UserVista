// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersListResponseModel _$UsersListResponseModelFromJson(
        Map<String, dynamic> json) =>
    UsersListResponseModel(
      json['page'] as int?,
      json['per_page'] as int?,
      json['total'] as int?,
      json['total_pages'] as int?,
      (json['data'] as List<dynamic>?)
          ?.map((e) => DataResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['support'] == null
          ? null
          : SupportResponseModel.fromJson(
              json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersListResponseModelToJson(
        UsersListResponseModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.data,
      'support': instance.support,
    };

SupportResponseModel _$SupportResponseModelFromJson(
        Map<String, dynamic> json) =>
    SupportResponseModel(
      json['url'] as String?,
      json['text'] as String?,
    );

Map<String, dynamic> _$SupportResponseModelToJson(
        SupportResponseModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'text': instance.text,
    };

DataResponseModel _$DataResponseModelFromJson(Map<String, dynamic> json) =>
    DataResponseModel(
      json['id'] as int?,
      json['email'] as String?,
      json['first_name'] as String?,
      json['last_name'] as String?,
      json['avatar'] as String?,
    );

Map<String, dynamic> _$DataResponseModelToJson(DataResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };
