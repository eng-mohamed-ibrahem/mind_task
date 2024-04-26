// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      active: json['active'] as String,
      name: json['name'] as String,
      notifications: json['notifications'] as String,
      profilePhoto: json['profile_photo'] as String,
      authKey: json['auth_key'] as String,
      favoriteId: json['favorite_id'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'active': instance.active,
      'name': instance.name,
      'notifications': instance.notifications,
      'profile_photo': instance.profilePhoto,
      'auth_key': instance.authKey,
      'favorite_id': instance.favoriteId,
    };
