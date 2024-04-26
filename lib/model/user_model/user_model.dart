import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    required String active,
    required String name,
    required String notifications,
    @JsonKey(name: 'profile_photo') required String profilePhoto,
    @JsonKey(name: 'auth_key') required String authKey,
    @JsonKey(name: 'favorite_id') String? favoriteId,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
