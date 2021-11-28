import 'package:arango_client/generated/file.pb.dart';
import 'package:hive/hive.dart';

part 'file.g.dart';

@HiveType(typeId: 3)
enum FileType {
  @HiveField(0)
  file,
  @HiveField(1)
  image
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

FileTypeE fileTypeToProto(FileType i) {
  switch (i) {
    case FileType.file:
      return FileTypeE.file;
    case FileType.image:
      return FileTypeE.image;
    default:
      return FileTypeE.file;
  }
}

@HiveType(typeId: 2)
class File extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(3)
  FileType type;
  File({required this.id, required this.name, required this.type});
  factory File.fromProto(FileR i) {
    return File(id: i.id, name: i.name, type: fileTypeFromProto(i.type));
  }
}
