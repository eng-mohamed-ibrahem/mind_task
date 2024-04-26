// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get active => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get notifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_photo')
  String get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_key')
  String get authKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite_id')
  String? get favoriteId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String email,
      String active,
      String name,
      String notifications,
      @JsonKey(name: 'profile_photo') String profilePhoto,
      @JsonKey(name: 'auth_key') String authKey,
      @JsonKey(name: 'favorite_id') String? favoriteId});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? active = null,
    Object? name = null,
    Object? notifications = null,
    Object? profilePhoto = null,
    Object? authKey = null,
    Object? favoriteId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: null == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      authKey: null == authKey
          ? _value.authKey
          : authKey // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteId: freezed == favoriteId
          ? _value.favoriteId
          : favoriteId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String active,
      String name,
      String notifications,
      @JsonKey(name: 'profile_photo') String profilePhoto,
      @JsonKey(name: 'auth_key') String authKey,
      @JsonKey(name: 'favorite_id') String? favoriteId});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? active = null,
    Object? name = null,
    Object? notifications = null,
    Object? profilePhoto = null,
    Object? authKey = null,
    Object? favoriteId = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: null == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      authKey: null == authKey
          ? _value.authKey
          : authKey // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteId: freezed == favoriteId
          ? _value.favoriteId
          : favoriteId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.email,
      required this.active,
      required this.name,
      required this.notifications,
      @JsonKey(name: 'profile_photo') required this.profilePhoto,
      @JsonKey(name: 'auth_key') required this.authKey,
      @JsonKey(name: 'favorite_id') this.favoriteId});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String active;
  @override
  final String name;
  @override
  final String notifications;
  @override
  @JsonKey(name: 'profile_photo')
  final String profilePhoto;
  @override
  @JsonKey(name: 'auth_key')
  final String authKey;
  @override
  @JsonKey(name: 'favorite_id')
  final String? favoriteId;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, active: $active, name: $name, notifications: $notifications, profilePhoto: $profilePhoto, authKey: $authKey, favoriteId: $favoriteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.authKey, authKey) || other.authKey == authKey) &&
            (identical(other.favoriteId, favoriteId) ||
                other.favoriteId == favoriteId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, active, name,
      notifications, profilePhoto, authKey, favoriteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
          {required final String id,
          required final String email,
          required final String active,
          required final String name,
          required final String notifications,
          @JsonKey(name: 'profile_photo') required final String profilePhoto,
          @JsonKey(name: 'auth_key') required final String authKey,
          @JsonKey(name: 'favorite_id') final String? favoriteId}) =
      _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get active;
  @override
  String get name;
  @override
  String get notifications;
  @override
  @JsonKey(name: 'profile_photo')
  String get profilePhoto;
  @override
  @JsonKey(name: 'auth_key')
  String get authKey;
  @override
  @JsonKey(name: 'favorite_id')
  String? get favoriteId;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
