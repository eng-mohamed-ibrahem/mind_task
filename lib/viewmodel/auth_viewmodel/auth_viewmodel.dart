import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mind_task/core/utils/local_database/cache_service.dart';
import 'package:mind_task/model/user_model/user_model.dart';
import 'package:mind_task/repositories/auth_repo/auth_repo_interface.dart';
import 'package:mind_task/repositories/user_repo/user_repo_interface.dart';

part 'auth_viewmodel.freezed.dart';
part 'auth_viewmodel_state.dart';

class AuthViewmodel extends Cubit<AuthViewmodelState> {
  AuthViewmodel({required this.authRepo, required this.userRepo})
      : super(const AuthViewmodelState());
  final AuthRepoInterface authRepo;
  final UserRepoInterface userRepo;

  void login({required String email, required String password}) async {
    emit(reset().copyWith(isLoginLoading: true));
    var result = await authRepo.login(email, password);
    result.when(
      success: (user) async {
        CacheService.saveAuthKey(user.authKey);
        CacheService.saveUserId(user.id);
        emit(
          state.copyWith(
            isLoginLoading: false,
            isLoginSuccess: true,
            user: user,
          ),
        );
        // var resultOfAdding = await userRepo.setUserData(user);
        // resultOfAdding.when(
        //   success: (added) {
        //     emit(
        //       state.copyWith(
        //         isLoginLoading: false,
        //         isLoginSuccess: added,
        //         user: user,
        //       ),
        //     );
        //   },
        //   failure: (failure) {
        //     emit(
        //       state.copyWith(
        //         isLoginLoading: false,
        //         isLoginFailed: true,
        //         errorMessage: failure.message,
        //       ),
        //     );
        //   },
        // );
      },
      failure: (failure) {
        emit(
          state.copyWith(
            isLoginLoading: false,
            isLoginFailed: true,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }

  AuthViewmodelState reset() {
    return state.copyWith(
      isLoginFailed: false,
      isLoginSuccess: false,
      isLoginLoading: false,
      errorMessage: null,
    );
  }
}
