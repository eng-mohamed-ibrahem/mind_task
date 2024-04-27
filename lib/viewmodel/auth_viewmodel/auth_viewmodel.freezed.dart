// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthViewmodelState {
  bool get isInitialized => throw _privateConstructorUsedError;
  bool get isLoginLoading => throw _privateConstructorUsedError;
  bool get isLoginSuccess => throw _privateConstructorUsedError;
  bool get isLoginFailed => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthViewmodelStateCopyWith<AuthViewmodelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthViewmodelStateCopyWith<$Res> {
  factory $AuthViewmodelStateCopyWith(
          AuthViewmodelState value, $Res Function(AuthViewmodelState) then) =
      _$AuthViewmodelStateCopyWithImpl<$Res, AuthViewmodelState>;
  @useResult
  $Res call(
      {bool isInitialized,
      bool isLoginLoading,
      bool isLoginSuccess,
      bool isLoginFailed,
      UserModel? user,
      String? errorMessage});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthViewmodelStateCopyWithImpl<$Res, $Val extends AuthViewmodelState>
    implements $AuthViewmodelStateCopyWith<$Res> {
  _$AuthViewmodelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialized = null,
    Object? isLoginLoading = null,
    Object? isLoginSuccess = null,
    Object? isLoginFailed = null,
    Object? user = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isInitialized: null == isInitialized
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginLoading: null == isLoginLoading
          ? _value.isLoginLoading
          : isLoginLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSuccess: null == isLoginSuccess
          ? _value.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginFailed: null == isLoginFailed
          ? _value.isLoginFailed
          : isLoginFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthViewmodelStateImplCopyWith<$Res>
    implements $AuthViewmodelStateCopyWith<$Res> {
  factory _$$AuthViewmodelStateImplCopyWith(_$AuthViewmodelStateImpl value,
          $Res Function(_$AuthViewmodelStateImpl) then) =
      __$$AuthViewmodelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInitialized,
      bool isLoginLoading,
      bool isLoginSuccess,
      bool isLoginFailed,
      UserModel? user,
      String? errorMessage});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthViewmodelStateImplCopyWithImpl<$Res>
    extends _$AuthViewmodelStateCopyWithImpl<$Res, _$AuthViewmodelStateImpl>
    implements _$$AuthViewmodelStateImplCopyWith<$Res> {
  __$$AuthViewmodelStateImplCopyWithImpl(_$AuthViewmodelStateImpl _value,
      $Res Function(_$AuthViewmodelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialized = null,
    Object? isLoginLoading = null,
    Object? isLoginSuccess = null,
    Object? isLoginFailed = null,
    Object? user = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AuthViewmodelStateImpl(
      isInitialized: null == isInitialized
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginLoading: null == isLoginLoading
          ? _value.isLoginLoading
          : isLoginLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSuccess: null == isLoginSuccess
          ? _value.isLoginSuccess
          : isLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginFailed: null == isLoginFailed
          ? _value.isLoginFailed
          : isLoginFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthViewmodelStateImpl implements _AuthViewmodelState {
  const _$AuthViewmodelStateImpl(
      {this.isInitialized = true,
      this.isLoginLoading = false,
      this.isLoginSuccess = false,
      this.isLoginFailed = false,
      this.user = null,
      this.errorMessage = null});

  @override
  @JsonKey()
  final bool isInitialized;
  @override
  @JsonKey()
  final bool isLoginLoading;
  @override
  @JsonKey()
  final bool isLoginSuccess;
  @override
  @JsonKey()
  final bool isLoginFailed;
  @override
  @JsonKey()
  final UserModel? user;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthViewmodelState(isInitialized: $isInitialized, isLoginLoading: $isLoginLoading, isLoginSuccess: $isLoginSuccess, isLoginFailed: $isLoginFailed, user: $user, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthViewmodelStateImpl &&
            (identical(other.isInitialized, isInitialized) ||
                other.isInitialized == isInitialized) &&
            (identical(other.isLoginLoading, isLoginLoading) ||
                other.isLoginLoading == isLoginLoading) &&
            (identical(other.isLoginSuccess, isLoginSuccess) ||
                other.isLoginSuccess == isLoginSuccess) &&
            (identical(other.isLoginFailed, isLoginFailed) ||
                other.isLoginFailed == isLoginFailed) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInitialized, isLoginLoading,
      isLoginSuccess, isLoginFailed, user, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthViewmodelStateImplCopyWith<_$AuthViewmodelStateImpl> get copyWith =>
      __$$AuthViewmodelStateImplCopyWithImpl<_$AuthViewmodelStateImpl>(
          this, _$identity);
}

abstract class _AuthViewmodelState implements AuthViewmodelState {
  const factory _AuthViewmodelState(
      {final bool isInitialized,
      final bool isLoginLoading,
      final bool isLoginSuccess,
      final bool isLoginFailed,
      final UserModel? user,
      final String? errorMessage}) = _$AuthViewmodelStateImpl;

  @override
  bool get isInitialized;
  @override
  bool get isLoginLoading;
  @override
  bool get isLoginSuccess;
  @override
  bool get isLoginFailed;
  @override
  UserModel? get user;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AuthViewmodelStateImplCopyWith<_$AuthViewmodelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
