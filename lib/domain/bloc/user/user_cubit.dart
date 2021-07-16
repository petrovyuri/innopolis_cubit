import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:innopolis_cubit/domain/bloc/auth/auth_cubit.dart';
import 'package:innopolis_cubit/domain/interfaces/user_repository.dart';
import 'package:innopolis_cubit/domain/models/user/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final AuthCubit authCubit;
  final UserRepository userRepository;
  StreamSubscription? _authCubitStreamSubscription;

  UserCubit({
    required this.authCubit,
    required this.userRepository,
  }) : super(UserState()) {
    AuthState state = authCubit.state;
    if (state is AuthorizedState) {
      fetchUser(state.authData!.apiToken!);
    }
    _authCubitStreamSubscription = authCubit.stream.distinct((prev, next) {
      return prev != next;
    }).listen((state) {
      if (state is AuthorizedState) {
        fetchUser(state.authData!.apiToken!);
      }
    });
  }

  @override
  Future<void> close() {
    _authCubitStreamSubscription?.cancel();
    return super.close();
  }

  Future fetchUser(String token) async {
    emit(UserState(inProgress: true));
    userRepository.fetch(token).then((user) {
      emit(UserState(user: user));
    }).catchError((error) {
      emit(UserState(errorMessage: error.toString()));
    });
  }
}
