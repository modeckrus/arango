part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class SearchE extends SearchEvent {
  String? search;
  int skip;
  int limit;
  SearchE({
    this.search,
    required this.skip,
    required this.limit,
  });
}
