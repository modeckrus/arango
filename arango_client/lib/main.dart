import 'pages/file_create/file_create.dart';
import 'pages/user/user_create.dart';
import 'service/file.dart';

import 'auth/auth_bloc.dart';
import 'model/auth.dart';
import 'model/file.dart';
import 'model/user.dart';
import 'pages/home.dart';
import 'pages/login.dart';
import 'service/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';
import 'package:hive_flutter/adapters.dart';

var host = "localhost";
var port = 50050;
void main() async {
  final appName = 'arango';
  final storagePath = '/home/modeck/hive/';

  await Hive.initFlutter(storagePath+appName);
  Hive.registerAdapter(UserLevelAdapter());
  Hive.registerAdapter(FileTypeAdapter());
  Hive.registerAdapter(AuthAdapter());
  Hive.registerAdapter<File>(FileAdapter());
  Hive.registerAdapter<UserItem>(UserItemAdapter());
  Hive.registerAdapter<User>(UserAdapter());

  await Hive.openBox<User>('user');
  await Hive.openBox<File>('file');
  await Hive.openBox<Auth>('auth');

  ClientChannel channel = ClientChannel(host,
      port: port,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ));
  GetIt.I.registerSingleton<ClientChannel>(channel);
  UserService userService = UserService(channel: channel);
  GetIt.I.registerSingleton<UserService>(userService);
  FileService fileService = FileService(channel: channel);
  GetIt.I.registerSingleton<FileService>(fileService);
  
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      routes: {
        '/file/create':(context)=>const FileCreatePage(),
        '/user/create':(context)=>const UserCreatePage(),
      },
      home: BlocProvider(
        create: (context) => AuthBloc()..add(AuthInitialE()),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is AuthInitial) {
              return CircularProgressIndicator();
            }
            if (state is Authenticated) {
              return HomePage();
            }
            if (state is UnAuthenticated) {
              return LoginPage();
            }
            if (state is AuthError) {
              return LoginPage();
            }
            return Container();
          },
        ),
      ),
    );
  }
}
