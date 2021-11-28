import '../../model/user.dart';
import '../../service/user.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  UserService service;
  SearchBloc({required this.service}) : super(SearchInitial()) {
    on<SearchEvent>((event, emit) async {
      if (event is SearchE) {
        try {
          final result = await service.search(
              limit: event.limit, skip: event.skip, search: event.search);
          emit(SearchS(result));
        } catch (e) {
          emit(SearchError(e.toString()));
        }
      }
    });
  }
}
