
import 'package:innopolis_cubit/domain/interfaces/user_repository.dart';
import 'package:innopolis_cubit/domain/models/user/user.dart';

/// Репозиторий для получения User, с помощью токена.
class UserRepositoryImpl implements UserRepository {
  @override
  Future<User> fetch(String token) async {
    await Future.delayed(Duration(seconds: 1));
    // Фейковые данные
    // Проверка токена, получение данных
    return User(id: "1");
  }
}
