part of 'file_create_bloc.dart';

@immutable
abstract class FileCreateState {}

class FileCreateInitial extends FileCreateState {}

class FileCreateLoadingS extends FileCreateState {}

class FileCreateSuccesS extends FileCreateState {
  final File file;

  FileCreateSuccesS(this.file);
}

class FileCreateErrorS extends FileCreateState {
  final String error;

  FileCreateErrorS(this.error);
}
