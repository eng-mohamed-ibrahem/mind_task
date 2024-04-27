part of 'navigation_bar_viewmodel.dart';

@freezed
class NavigationBarViewmodelState with _$NavigationBarViewmodelState {
  const factory NavigationBarViewmodelState({
    @Default(true) bool isInitialized,
    @Default(false) bool isHomeDataLoading,
    @Default(false) bool isHomeDataSuccess,
    @Default(false) bool isHomeDataFailed,
    @Default(null) HomeModel? homeData,
    @Default(null) String? errorMessage,
    @Default(0) int currentTabIndex,
  }) = _NavigationBarViewmodelState;
}
