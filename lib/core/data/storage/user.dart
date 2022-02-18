import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

part 'user.g.dart';

abstract class UserStorage {
  TokenPayload? payload;
  String? token;
  Future<int> clear();
}

@Injectable(as: UserStorage)
class AuthStorageHive implements UserStorage {
  static const _hiveBoxName = 'user';
  static const _payload = 'payload';

  static Future init() async {
    await Hive.openBox(_hiveBoxName);
  }

  @override
  TokenPayload? get payload {
    return _hiveBox.get(_payload);
  }

  @override
  set payload(TokenPayload? data) {
    _hiveBox.put(_payload, data);
  }

  @override
  String? get token {
    var payload = _hiveBox.get(_payload);
    var token = (payload as TokenPayload?)?.token;
    return token;
  }

  @override
  set token(String? data) {
    var payload = _hiveBox.get(_payload);
    if (payload is TokenPayload) {
      payload.token = data;
      _hiveBox.put(_payload, payload);
    } else {
      _hiveBox.put(_payload, TokenPayload(token, null, null, null, null));
    }
  }

  @override
  Future<int> clear() async {
    var result = await _hiveBox.clear();
    return result;
  }

  Box get _hiveBox => Hive.box(_hiveBoxName);
}

@HiveType(typeId: 0)
class TokenPayload extends HiveObject {
  @HiveField(0)
  String? token;

  @HiveField(1)
  String? refreshToken;

  @HiveField(2)
  int? expiresTime;

  @HiveField(3)
  String? tokenType;

  @HiveField(4)
  String? role;

  TokenPayload(this.token, this.refreshToken, this.expiresTime, this.tokenType,
      this.role);
}
