import '../../../model/file.dart';
import '../../../service/file.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

part 'user_page_event.dart';
part 'user_page_state.dart';

class UserPageBloc extends Bloc<UserPageEvent, UserPageState> {
  late FileService service;
  UserPageBloc() : super(UserPageInitial()) {
    service = GetIt.I.get<FileService>();
    on<UserPageEvent>((event, emit) async{
      if(event is UserPageInit){
        emit(UserPageLoadingS());
        try {
          final files = await service.user(id: event.id);
          if(files != null){
          emit(UserPageSuccesS(files));
          }
        } catch (e) {
          emit(UserPageErrorS(e.toString()));
        }
        
        
      }
    });
  }
}
