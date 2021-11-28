import 'package:fixnum/fixnum.dart' as f;
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';
import 'package:hive/hive.dart';

import '../generated/common.pb.dart';
import '../generated/user.pbgrpc.dart';
import '../model/auth.dart';
import '../model/user.dart';

class UserService {
  ClientChannel channel;
  UserService({
    required this.channel,
  }) {
    client = UserSClient(channel);
  }
  late UserSClient client;
  Future<User> auth(String email, String password) async {
    final a = await client.authByEmail(
        AuthByEmailI(email: email, password: password, locale: "ru"));
    final auth = Auth.fromProto(a);
    if (GetIt.I.isRegistered<Auth>()) {
      GetIt.I.unregister<Auth>();
    }
    GetIt.I.registerSingleton<Auth>(auth);
    final authBox = Hive.box<Auth>('auth');
    if (authBox.length == 0) {
      authBox.add(auth);
    } else {
      authBox.putAt(0, auth);
    }
    final user = await client.me(a);
    return User.fromProto(user);
  }

  Future<User> me() async {
    final user = await client.me(GetIt.I.get<Auth>().toProto());
    return User.fromProto(user);
  }

  Future<List<UserItem>> search(
      {String? search, required int skip, required int limit}) async {
    final resp = await client.search(SearchI(
        auth: GetIt.I.get<Auth>().toProto(),
        text: search,
        skip: f.Int64(skip),
        limit: f.Int64(limit)));
    List<UserItem> result = [];
    for (var element in resp.list) {
      result.add(UserItem.fromProto(element));
    }
    return result;
  }
  Future<User?> create({required String name, required String email, required UserLevel level, required String password})async{
    try {
      final user = await client.create(CreateUserI(
        auth: GetIt.I.get<Auth>().toProto(),
        name: name,
        email: email,
        level: userLevelToProto(level),
        password: password
      ));
      return User.fromProto(user);
    } catch (e) {
      throw e;
    }
  }
  Future<User?> update({required User i, String? password})async{
    try {
      final user = await client.update(UpdateUserI(
        auth: GetIt.I.get<Auth>().toProto(),
        id: i.id,
        name: i.name,
        email: i.email,
        level: userLevelToProto(i.level),
        password: password
      ));
      return User.fromProto(user);
    } catch (e) {
      throw e;
    }
  }
}
