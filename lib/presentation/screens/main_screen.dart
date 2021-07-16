import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:innopolis_cubit/domain/bloc/auth/auth_cubit.dart';
import 'package:innopolis_cubit/domain/bloc/user/user_cubit.dart';
import 'package:innopolis_cubit/presentation/widgets/auth_builder.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AuthCubitBuilder(
        buildNotAuthorizedState: (context) => const _UnAuthorizedPage(),
        buildAuthorizedState: (context) => const _AuthorizedPage(),
      ),
    );
  }
}

class _AuthorizedPage extends StatelessWidget {
  const _AuthorizedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          const _UserCard(),
          MaterialButton(
              color: Colors.blue,
              minWidth: 200,
              textColor: Colors.white,
              child: const Text("Выйти"),
              onPressed: () => context.read<AuthCubit>().logOut())
        ],
      ),
    );
  }
}

class _UnAuthorizedPage extends StatelessWidget {
  const _UnAuthorizedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            "Не авторизован",
            style: TextStyle(
              fontSize: 27,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          MaterialButton(
              color: Colors.blue,
              minWidth: 200,
              textColor: Colors.white,
              child: const Text("Регистрация"),
              onPressed: () => Navigator.pushNamed(context, "/register"))
        ],
      ),
    );
  }
}

class _UserCard extends StatelessWidget {
  const _UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state.inProgress) {
          return const CircularProgressIndicator();
        }
        if (state.errorMessage?.isNotEmpty == true) {
          return Text(state.errorMessage!);
        }
        if (state.user == null) {
          return Text("Пользователь null");
        } else {
          return Text(
            " Авторизован ID: ${state.user!.id!}",
            style: const TextStyle(color: Colors.teal, fontSize: 30),
          );
        }
      },
    );
  }
}
