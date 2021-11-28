import 'package:hive/hive.dart';

import '../generated/file.pb.dart';
import '../generated/user.pb.dart';

import 'file.dart';

part 'user.g.dart';

@HiveType(typeId: 1)
enum UserLevel {
  @HiveField(0)
  unauth,
  @HiveField(1)
  auth
}

@HiveType(typeId: 4)
class UserItem {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  UserLevel level;
  UserItem({
    required this.id,
    required this.name,
    required this.level,
  });
  factory UserItem.fromProto(UserItemR user) {
    return UserItem(
        id: user.id, name: user.name, level: userLevelFromProto(user.level));
  }
}

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String email;
  @HiveField(3)
  File? avatar;
  @HiveField(4)
  UserLevel level;
  factory User.fromProto(UserR user) {
    File? avatar;
    if (user.hasAvatar()) {
      avatar = File(
          id: user.avatar.id,
          name: user.avatar.name,
          type: fileTypeFromProto(user.avatar.type));
    }
    return User(
        id: user.id,
        name: user.name,
        avatar: avatar,
        email: user.email,
        level: userLevelFromProto(user.level));
  }
  User(
      {required this.id,
      required this.name,
      required this.avatar,
      required this.email,
      required this.level});
}

FileType fileTypeFromProto(FileTypeE i) {
  switch (i) {
    case FileTypeE.file:
      return FileType.file;
    case FileTypeE.image:
      return FileType.image;
    default:
      return FileType.file;
  }
}

UserLevel userLevelFromProto(UserLevelE i) {
  switch (i) {
    case UserLevelE.Auth:
      return UserLevel.auth;
    case UserLevelE.Unauth:
      return UserLevel.unauth;
    default:
      return UserLevel.unauth;
  }
}
