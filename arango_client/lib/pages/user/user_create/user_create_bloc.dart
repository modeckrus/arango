import 'package:arango_client/model/user.dart';
import 'package:arango_client/service/user.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

part 'user_create_event.dart';
part 'user_create_state.dart';

class UserCreateBloc extends Bloc<UserCreateEvent, UserCreateState> {
  late UserService service;
  UserCreateBloc() : super(UserCreateInitial()) {
    service = GetIt.I.get<UserService>();
    on<UserCreateEvent>((event, emit) async {
      if (event is UserCreateE) {
        emit(UserCreateLoadingS());
        try {
          final user = await service.create(
              name: event.name,
              email: event.email,
              level: event.level,
              password: event.password);
          if (user != null) {
            emit(UserCreateSuccesS(user));
          }
        } catch (e) {
          emit(UserCreateErrorS(e.toString()));
        }
      }
      if (event is UserUpdateE) {
        emit(UserCreateLoadingS());
        try {
          final user =
              await service.update(i: event.user, password: event.password);
          if (user != null) {
            emit(UserCreateSuccesS(user));
          }
        } catch (e) {
          emit(UserCreateErrorS(e.toString()));
        }
      }
    });
  }
}
