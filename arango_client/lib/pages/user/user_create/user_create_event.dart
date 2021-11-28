part of 'user_create_bloc.dart';

@immutable
abstract class UserCreateEvent {}

class UserCreateE extends UserCreateEvent{
  final String name;
  final String email;
  final UserLevel level;
  final String password;
  UserCreateE({required this.name, required this.email, required this.level, required this.password});

}
class UserUpdateE extends UserCreateEvent{
  final User user;
  final String? password;
  UserUpdateE({required this.user, this.password});

}