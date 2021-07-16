import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:innopolis_cubit/domain/bloc/auth/auth_cubit.dart';
import 'package:innopolis_cubit/domain/interfaces/auth_repository.dart';
import 'package:innopolis_cubit/domain/models/registration/registration_model.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository authRepository;
  final AuthCubit authCubit;

  RegisterCubit({
    required this.authRepository,
    required this.authCubit,
  }) : super(RegisterState(registrationModel: RegistrationModel()));

  updateFormState(RegistrationModel registrationModel) {
    emit(state.copyWith(registrationModel: registrationModel));
  }

  Future registration() async {
    emit(state.copyWith(registrationSnapshot: AsyncSnapshot.waiting()));
    authRepository.signUp(state.registrationModel).then((authData) {
      authCubit.onAuthorized(authData);
      emit(state.copyWith(
          registrationSnapshot:
              AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      emit(state.copyWith(
          registrationSnapshot:
              AsyncSnapshot.withError(ConnectionState.done, error)));
    });
  }
}
