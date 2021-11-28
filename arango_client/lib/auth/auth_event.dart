part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthByEmailE extends AuthEvent {
  String email;
  String password;
  AuthByEmailE({
    required this.email,
    required this.password,
  });
}

class AuthLogOutE extends AuthEvent {}

class AuthInitialE extends AuthEvent {}
