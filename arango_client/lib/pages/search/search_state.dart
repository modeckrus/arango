part of 'search_bloc.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchS extends SearchState {
  final List<UserItem> items;

  SearchS(this.items);
}

class SearchError extends SearchState {
  final String error;

  SearchError(this.error);
}
