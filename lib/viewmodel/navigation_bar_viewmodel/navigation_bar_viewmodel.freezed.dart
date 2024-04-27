// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bar_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigationBarViewmodelState {
  bool get isInitialized => throw _privateConstructorUsedError;
  int get currentTabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationBarViewmodelStateCopyWith<NavigationBarViewmodelState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationBarViewmodelStateCopyWith<$Res> {
  factory $NavigationBarViewmodelStateCopyWith(
          NavigationBarViewmodelState value,
          $Res Function(NavigationBarViewmodelState) then) =
      _$NavigationBarViewmodelStateCopyWithImpl<$Res,
          NavigationBarViewmodelState>;
  @useResult
  $Res call({bool isInitialized, int currentTabIndex});
}

/// @nodoc
class _$NavigationBarViewmodelStateCopyWithImpl<$Res,
        $Val extends NavigationBarViewmodelState>
    implements $NavigationBarViewmodelStateCopyWith<$Res> {
  _$NavigationBarViewmodelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialized = null,
    Object? currentTabIndex = null,
  }) {
    return _then(_value.copyWith(
      isInitialized: null == isInitialized
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTabIndex: null == currentTabIndex
          ? _value.currentTabIndex
          : currentTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigationBarViewmodelStateImplCopyWith<$Res>
    implements $NavigationBarViewmodelStateCopyWith<$Res> {
  factory _$$NavigationBarViewmodelStateImplCopyWith(
          _$NavigationBarViewmodelStateImpl value,
          $Res Function(_$NavigationBarViewmodelStateImpl) then) =
      __$$NavigationBarViewmodelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isInitialized, int currentTabIndex});
}

/// @nodoc
class __$$NavigationBarViewmodelStateImplCopyWithImpl<$Res>
    extends _$NavigationBarViewmodelStateCopyWithImpl<$Res,
        _$NavigationBarViewmodelStateImpl>
    implements _$$NavigationBarViewmodelStateImplCopyWith<$Res> {
  __$$NavigationBarViewmodelStateImplCopyWithImpl(
      _$NavigationBarViewmodelStateImpl _value,
      $Res Function(_$NavigationBarViewmodelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialized = null,
    Object? currentTabIndex = null,
  }) {
    return _then(_$NavigationBarViewmodelStateImpl(
      isInitialized: null == isInitialized
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTabIndex: null == currentTabIndex
          ? _value.currentTabIndex
          : currentTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavigationBarViewmodelStateImpl
    implements _NavigationBarViewmodelState {
  const _$NavigationBarViewmodelStateImpl(
      {this.isInitialized = true, this.currentTabIndex = 0});

  @override
  @JsonKey()
  final bool isInitialized;
  @override
  @JsonKey()
  final int currentTabIndex;

  @override
  String toString() {
    return 'NavigationBarViewmodelState(isInitialized: $isInitialized, currentTabIndex: $currentTabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationBarViewmodelStateImpl &&
            (identical(other.isInitialized, isInitialized) ||
                other.isInitialized == isInitialized) &&
            (identical(other.currentTabIndex, currentTabIndex) ||
                other.currentTabIndex == currentTabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInitialized, currentTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationBarViewmodelStateImplCopyWith<_$NavigationBarViewmodelStateImpl>
      get copyWith => __$$NavigationBarViewmodelStateImplCopyWithImpl<
          _$NavigationBarViewmodelStateImpl>(this, _$identity);
}

abstract class _NavigationBarViewmodelState
    implements NavigationBarViewmodelState {
  const factory _NavigationBarViewmodelState(
      {final bool isInitialized,
      final int currentTabIndex}) = _$NavigationBarViewmodelStateImpl;

  @override
  bool get isInitialized;
  @override
  int get currentTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$NavigationBarViewmodelStateImplCopyWith<_$NavigationBarViewmodelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
