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
  String email;
  @HiveField(3)
  File? avatar;
  @HiveField(4)
  UserLevel level;
  @HiveField(5)
  List<File> files;
  User toUser(){
    return User(id: id, email: email, name: name, avatar: avatar, level:level);
  }
  factory UserItem.fromProto(UserItemR user) {
    File? avatar;
    if (user.hasAvatar()) {
      avatar = File(
          id: user.avatar.id,
          name: user.avatar.name,
          type: fileTypeFromProto(user.avatar.type));
    }
    List<File> files = [];
    for (var file in user.files) {
      files.add(File.fromProto(file));
    }
    return UserItem(
        id: user.id,
        name: user.name,
        avatar: avatar,
        email: user.email,
        level: userLevelFromProto(user.level),
        files: files);
  }
  UserItem(
      {required this.id,
      required this.name,
      required this.avatar,
      required this.email,
      required this.level,
      this.files = const []});
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

UserLevelE userLevelToProto(UserLevel i) {
  switch (i) {
    case UserLevel.auth:
      return UserLevelE.Auth;
    case UserLevel.unauth:
      return UserLevelE.Unauth;
    default:
      return UserLevelE.Unauth;
  }
}
