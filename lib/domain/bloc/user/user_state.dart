part of 'user_cubit.dart';

class UserState {
  final User? user;
  final bool inProgress;
  final String? errorMessage;

  UserState({
    this.user,
    this.inProgress = false,
    this.errorMessage,
  });
}
