import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/bloc/auth/auth_cubit.dart';

class AuthCubitBuilder extends StatelessWidget {
  final WidgetBuilder buildAuthorizedState;
  final WidgetBuilder buildNotAuthorizedState;

  const AuthCubitBuilder({
    Key? key,
    required this.buildAuthorizedState,
    required this.buildNotAuthorizedState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthorizedState) {
          return buildAuthorizedState(context);
        }
        return buildNotAuthorizedState(context);
      },
    );
  }
}
