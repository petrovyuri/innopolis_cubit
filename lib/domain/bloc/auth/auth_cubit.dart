import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:innopolis_cubit/domain/interfaces/auth_repository.dart';

import '../../models/auth_data/auth_data.dart';

part 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit(this.authRepository) : super(UnAuthorizedState());

  onAuthorized(AuthData authData) {
    emit(AuthorizedState(authData));
  }

  logOut() {
    authRepository.signOut().whenComplete(() {
      emit(UnAuthorizedState());
    });
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    try {
      var token = AuthData.fromJson(json).apiToken;
      if (token?.isNotEmpty == true) {
        return AuthorizedState(AuthData(apiToken: token));
      } else {
        return UnAuthorizedState();
      }
    } catch (_) {
      return UnAuthorizedState();
    }
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    if (state is AuthorizedState) {
      return state.authData?.toJson();
    } else {
      return AuthData().toJson();
    }
  }
}
