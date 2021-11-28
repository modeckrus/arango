part of 'user_page_bloc.dart';

@immutable
abstract class UserPageEvent {}

class UserPageInit extends UserPageEvent{
  final String id;

  UserPageInit(this.id);
}