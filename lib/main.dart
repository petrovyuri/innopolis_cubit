import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:innopolis_cubit/presentation/screens/main_screen.dart';
import 'package:innopolis_cubit/presentation/screens/register_screen.dart';
import 'package:path_provider/path_provider.dart';

import 'app/app_theme.dart';
import 'di.dart';
import 'domain/bloc/auth/auth_cubit.dart';
import 'domain/bloc/user/user_cubit.dart';
import 'domain/interfaces/auth_repository.dart';
import 'domain/interfaces/user_repository.dart';

void main() async {
  //Инициалиазция связок
  WidgetsFlutterBinding.ensureInitialized();
  //Инициализация хранилища, для хранения состояния приложения.
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  //Инициализация зависимостей
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(locator.get<AuthRepository>()),
        ),
        BlocProvider(
          create: (context) => UserCubit(
              authCubit: context.read<AuthCubit>(),
              userRepository: locator.get<UserRepository>()),
        )
      ],
      child: MaterialApp(
        theme: mainAppThemeData,
        initialRoute: "/",
        routes: {
          '/': (context) => MainScreen(),
          '/register': (context) => RegisterScreen(),
        },
      ),
    );
  }
}
