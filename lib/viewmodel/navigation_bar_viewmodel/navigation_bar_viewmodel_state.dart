part of 'navigation_bar_viewmodel.dart';

@freezed
class NavigationBarViewmodelState with _$NavigationBarViewmodelState {
  const factory NavigationBarViewmodelState({
    @Default(true) bool isInitialized,
    @Default(0) int currentTabIndex,
  }) = _NavigationBarViewmodelState;
}
