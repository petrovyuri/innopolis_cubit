import '../models/auth_data/auth_data.dart';
import '../models/registration/registration_model.dart';

/// Сервис, который предоставляет API для авторизации, регистрации
/// и деавторизация.
abstract class AuthRepository {
  //Регистрация
  Future<AuthData> signUp(RegistrationModel registrationModel);

  //Авторизация
  Future<AuthData> signIn();

  //Деавторизация
  Future signOut();
}
