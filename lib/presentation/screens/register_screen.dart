import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:innopolis_cubit/app/app_text_styles.dart';
import 'package:innopolis_cubit/app/app_validators.dart';
import 'package:innopolis_cubit/domain/bloc/auth/auth_cubit.dart';
import 'package:innopolis_cubit/domain/bloc/register/register_cubit.dart';
import 'package:innopolis_cubit/domain/interfaces/auth_repository.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../di.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(
        authRepository: locator.get<AuthRepository>(),
        authCubit: context.read<AuthCubit>(),
      ),
      child: _RegisterPage(),
    );
  }
}

class _RegisterPage extends StatelessWidget {
  _RegisterPage({Key? key}) : super(key: key);
  final _formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Регистрация"),
        ),
        body: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state.registrationSnapshot?.hasData == true) {
              Navigator.pop(context);
            }
            if (state.registrationSnapshot?.hasError == true) {
              Fluttertoast.showToast(
                  msg: state.registrationSnapshot!.error.toString());
            }
          },
          builder: (context, state) {
            if (state.registrationSnapshot?.connectionState ==
                ConnectionState.waiting) {
              return const Center(child: const CircularProgressIndicator());
            }
            return Form(
                key: _formGlobalKey,
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    const _NameTextField(),
                    const _PhoneTextField(),
                    const _EmailTextField(),
                    const SizedBox(height: 32),
                    MaterialButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: const Text("Регистрация"),
                        onPressed: () => _onRegistration(context))
                  ],
                ));
          },
        ));
  }

  void _onRegistration(BuildContext context) {
    if (_formGlobalKey.currentState?.validate() == true) {
      _formGlobalKey.currentState?.save();
      context.read<RegisterCubit>().registration();
    }
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: AppTextStyle.textFieldTextStyle,
        initialValue:
            context.read<RegisterCubit>().state.registrationModel.email,
        onSaved: (value) {
          context.read<RegisterCubit>().updateFormState(context
              .read<RegisterCubit>()
              .state
              .registrationModel
              .copyWith(email: value));
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: AppValidators.emailValidator,
        decoration: const InputDecoration(labelText: "email"));
  }
}

class _PhoneTextField extends StatelessWidget {
  const _PhoneTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneNumberFormatter = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
    );
    return TextFormField(
        style: AppTextStyle.textFieldTextStyle,
        initialValue:
            context.read<RegisterCubit>().state.registrationModel.phone,
        onSaved: (value) {
          context.read<RegisterCubit>().updateFormState(context
              .read<RegisterCubit>()
              .state
              .registrationModel
              .copyWith(phone: value));
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: [phoneNumberFormatter],
        validator: AppValidators.phoneValidator,
        decoration: const InputDecoration(labelText: "Телефон*"));
  }
}

class _NameTextField extends StatelessWidget {
  const _NameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: AppTextStyle.textFieldTextStyle,
        initialValue:
            context.read<RegisterCubit>().state.registrationModel.name,
        onSaved: (value) {
          context.read<RegisterCubit>().updateFormState(context
              .read<RegisterCubit>()
              .state
              .registrationModel
              .copyWith(name: value));
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: AppValidators.emptyFieldValidator,
        decoration: const InputDecoration(labelText: "Имя*"));
  }
}
