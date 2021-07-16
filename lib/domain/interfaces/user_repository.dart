import '../models/user/user.dart';

/// Репозиторий для получения User, с помощью токена.
abstract class UserRepository {
  Future<User> fetch(String token);
}
