part of 'user_page_bloc.dart';

@immutable
abstract class UserPageState {}

class UserPageInitial extends UserPageState {}

class UserPageSuccesS extends UserPageState{
  final List<File> files;

  UserPageSuccesS(this.files);
}

class UserPageLoadingS extends UserPageState{

}

class UserPageErrorS extends UserPageState{
  final String error;

  UserPageErrorS(this.error);
}