part of 'user_create_bloc.dart';

@immutable
abstract class UserCreateState {}

class UserCreateInitial extends UserCreateState {}

class UserCreateSuccesS extends UserCreateState{
  final User user;

  UserCreateSuccesS(this.user);
}
class UserCreateErrorS extends UserCreateState{
  final String error;

  UserCreateErrorS(this.error);
}
class UserCreateLoadingS extends UserCreateState{

}