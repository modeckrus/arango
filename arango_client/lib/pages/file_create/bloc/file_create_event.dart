part of 'file_create_bloc.dart';

@immutable
abstract class FileCreateEvent {}

class FileCreateInitialE extends FileCreateEvent {
  final String name;
  final FileType type;

  FileCreateInitialE({required this.name, required this.type});
}
