import '../model/auth.dart';
import '../model/user.dart';
import '../service/user.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  Box<User> box = Hive.box<User>('user');
  late UserService service;
  AuthBloc() : super(AuthInitial()) {
    service = GetIt.I.get<UserService>();
    on<AuthEvent>((event, emit) async {
      if (event is AuthInitialE) {
        final authBox = Hive.box<Auth>('auth');
        if (authBox.length != 0) {
          final auth = authBox.getAt(0);
          if (auth != null) {
            GetIt.I.registerSingleton<Auth>(auth);
            final user = await service.me();
            await box.deleteAll(box.keys);
            box.add(user);
            if (GetIt.I.isRegistered<User>()) {
              GetIt.I.unregister<User>();
            }
            GetIt.I.registerSingleton<User>(user);
            emit(Authenticated());
          } else {
            emit(UnAuthenticated());
          }
        } else {
          emit(UnAuthenticated());
        }
      } else if (event is AuthByEmailE) {
        try {
          final user = await service.auth(event.email, event.password);
          box.add(user);
          // box.putAt(0, user);
          if (GetIt.I.isRegistered<User>()) {
            GetIt.I.unregister<User>();
          }
          GetIt.I.registerSingleton<User>(user);
          emit(Authenticated());
        } catch (e) {
          emit(AuthError(e.toString()));
        }
      } else if (event is AuthLogOutE) {
        final authBox = Hive.box<Auth>('auth');
        authBox.deleteAll(authBox.keys);
        GetIt.I.unregister<Auth>();
        GetIt.I.unregister<User>();
        emit(UnAuthenticated());
      }
    });
  }
}
