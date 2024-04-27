import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mind_task/model/home_model/home_model.dart';
import 'package:mind_task/repositories/home_repo/home_repo_interface.dart';

part 'navigation_bar_viewmodel_state.dart';
part 'navigation_bar_viewmodel.freezed.dart';

class NavigationBarViewmodel extends Cubit<NavigationBarViewmodelState> {
  NavigationBarViewmodel({required this.homeRepo})
      : super(const NavigationBarViewmodelState());
  final HomeRepoInterface homeRepo;

  Future<void> getHomeData() async {
    emit(reset().copyWith(isHomeDataLoading: true));
    var result = await homeRepo.getHomeData();
    result.when(
      success: (homeData) {
        emit(
          state.copyWith(
            isHomeDataLoading: false,
            isHomeDataSuccess: true,
            homeData: homeData,
          ),
        );
      },
      failure: (failure) {
        emit(
          reset().copyWith(
            isHomeDataLoading: false,
            isHomeDataFailed: true,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }

  void changeTabIndex(int index) {
    emit(state.copyWith(currentTabIndex: index));
  }

  NavigationBarViewmodelState reset() {
    return state.copyWith(
      isHomeDataLoading: false,
      isHomeDataSuccess: false,
      isHomeDataFailed: false,
      errorMessage: null,
    );
  }
}
