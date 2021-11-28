import '../generated/common.pb.dart';
import 'package:hive/hive.dart';

part 'auth.g.dart';

@HiveType(typeId: 5)
class Auth extends HiveObject {
  @HiveField(0)
  String token;
  @HiveField(1)
  String locale;
  Auth({
    required this.token,
    required this.locale,
  });
  factory Auth.fromProto(AuthI i) {
    return Auth(token: i.token, locale: i.locale);
  }
  AuthI toProto() {
    return AuthI(token: token, locale: locale);
  }
}
