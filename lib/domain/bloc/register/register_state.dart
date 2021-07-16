part of 'register_cubit.dart';

class RegisterState extends Equatable {
  final AsyncSnapshot? registrationSnapshot;
  final RegistrationModel registrationModel;

  RegisterState({
    required this.registrationModel,
    this.registrationSnapshot,
  });

  RegisterState copyWith({
    RegistrationModel? registrationModel,
    AsyncSnapshot? registrationSnapshot,
  }) {
    return RegisterState(
      registrationModel: registrationModel ?? this.registrationModel,
      registrationSnapshot: registrationSnapshot ?? this.registrationSnapshot,
    );
  }

  @override
  List<Object?> get props => [registrationSnapshot, registrationModel];
}
