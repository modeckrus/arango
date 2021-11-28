///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FileTypeE extends $pb.ProtobufEnum {
  static const FileTypeE file = FileTypeE._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'file');
  static const FileTypeE image = FileTypeE._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'image');

  static const $core.List<FileTypeE> values = <FileTypeE> [
    file,
    image,
  ];

  static final $core.Map<$core.int, FileTypeE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileTypeE? valueOf($core.int value) => _byValue[value];

  const FileTypeE._($core.int v, $core.String n) : super(v, n);
}

