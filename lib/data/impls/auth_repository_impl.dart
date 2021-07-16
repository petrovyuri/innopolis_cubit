import 'package:innopolis_cubit/domain/interfaces/auth_repository.dart';
import 'package:innopolis_cubit/domain/models/auth_data/auth_data.dart';
import 'package:innopolis_cubit/domain/models/registration/registration_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<AuthData> signUp(RegistrationModel registrationModel) async {
    await Future.delayed(Duration(seconds: 1));
    if (registrationModel.name == "1") {
      throw "Ошибка регистрации";
    }
    return AuthData(
      apiToken: "lkhjqalksdjjidwesolkdjlojh***sdfds*f",
    );
  }

  @override
  Future<AuthData> signIn() {
    throw UnimplementedError();
  }

  @override
  Future signOut() {
    return Future.delayed(Duration(seconds: 1));
  }
}
