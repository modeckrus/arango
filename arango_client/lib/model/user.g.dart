// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserItemAdapter extends TypeAdapter<UserItem> {
  @override
  final int typeId = 4;

  @override
  UserItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserItem(
      id: fields[0] as String,
      name: fields[1] as String,
      avatar: fields[3] as File?,
      email: fields[2] as String,
      level: fields[4] as UserLevel,
      files: (fields[5] as List).cast<File>(),
    );
  }

  @override
  void write(BinaryWriter writer, UserItem obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.avatar)
      ..writeByte(4)
      ..write(obj.level)
      ..writeByte(5)
      ..write(obj.files);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as String,
      name: fields[1] as String,
      avatar: fields[3] as File?,
      email: fields[2] as String,
      level: fields[4] as UserLevel,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.avatar)
      ..writeByte(4)
      ..write(obj.level);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserLevelAdapter extends TypeAdapter<UserLevel> {
  @override
  final int typeId = 1;

  @override
  UserLevel read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UserLevel.unauth;
      case 1:
        return UserLevel.auth;
      default:
        return UserLevel.unauth;
    }
  }

  @override
  void write(BinaryWriter writer, UserLevel obj) {
    switch (obj) {
      case UserLevel.unauth:
        writer.writeByte(0);
        break;
      case UserLevel.auth:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserLevelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
