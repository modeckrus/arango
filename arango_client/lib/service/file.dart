import 'package:arango_client/generated/file.pbgrpc.dart';

import '../generated/common.pb.dart';
import '../generated/file.pbenum.dart';
import '../model/auth.dart';
import '../model/file.dart';
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';

import '../generated/user.pbgrpc.dart';
import '../model/user.dart';
import 'package:fixnum/fixnum.dart' as f;
import 'package:hive/hive.dart';

class FileService {
  ClientChannel channel;
  FileService({
    required this.channel,
  }) {
    client = FileSClient(channel);
  }
  late FileSClient client;
  Future<File?> create({required String name, required FileType type}) async {
    try {
      final resp = await client.create(AddFileI(
          auth: GetIt.I.get<Auth>().toProto(),
          name: name,
          type: fileTypeToProto(type)));
      return File.fromProto(resp);
    } catch (e) {
      throw e;
    }
  }
}
