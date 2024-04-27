part of 'auth_viewmodel.dart';

@freezed
class AuthViewmodelState with _$AuthViewmodelState {
  const factory AuthViewmodelState({
    @Default(true) bool isInitialized,
    @Default(false) bool isLoginLoading,
    @Default(false) bool isLoginSuccess,
    @Default(false) bool isLoginFailed,
    @Default(null) UserModel? user,
    @Default(null) String? errorMessage,
  }) = _AuthViewmodelState;
}
