import 'package:arango_client/model/file.dart';
import 'package:arango_client/service/file.dart';
import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

part 'file_create_event.dart';
part 'file_create_state.dart';

class FileCreateBloc extends Bloc<FileCreateEvent, FileCreateState> {
  late FileService service;
  FileCreateBloc() : super(FileCreateInitial()) {
    service = GetIt.I.get<FileService>();
    on<FileCreateEvent>((event, emit) async {
      if (event is FileCreateInitialE) {
        emit(FileCreateLoadingS());
        try {
          final file = await service.create(name: event.name, type: event.type);
          if (file != null) {
            emit(FileCreateSuccesS(file));
          }
        } catch (e) {
          emit(FileCreateErrorS(e.toString()));
        }
      }
    });
  }
}
