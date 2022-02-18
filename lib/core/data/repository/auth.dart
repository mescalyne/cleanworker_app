import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:untitled/core/data/adapters/auth.dart';
import 'package:untitled/core/data/network/services/auth.dart';
import 'package:untitled/core/data/storage/user.dart';
import 'package:untitled/core/domain/entities/auth.dart';
import 'package:untitled/utils/logger.dart';
import 'package:untitled/utils/result.dart';

abstract class AuthRepository {
  Future<Result<AuthDto>> phoneAuth(String telephone, String code);
}

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthService _authApi;
  final UserStorage _userStorage;

  AuthRepositoryImpl(this._authApi, this._userStorage);

  @override
  Future<Result<AuthDto>> phoneAuth(String telephone, String code) async {
    var authDto;
    try {
      final result = await _authApi.phoneAuth(telephone, code);
      if (result != null && result.accessToken.isNotEmpty) {
        authDto = result.toDomain;
        if (await saveDataInStorage(authDto)) {
          return Result.success(authDto);
        }
      }
      return Result.failure(Failure(NetworkResult.incorrectUser));
    } catch (ex) {
      if (ex is SocketException) {
        Log.error(
            'AuthRepository - phoneAuth: network error is ' + ex.toString());
        return Result.failure(Failure(NetworkResult.error));
      } else {
        Log.error('AuthRepository - phoneAuth: error is ' + ex.toString());
        return Result.failure(Failure(NetworkResult.incorrectUser));
      }
    }
  }

  bool saveDataInStorage(AuthDto authDto) {
    try {
      var time = (DateTime.now().millisecondsSinceEpoch / 1000).round() +
          authDto.expiresIn;
      _userStorage.payload = TokenPayload(authDto.accessToken,
          authDto.refreshToken, time, authDto.tokenType, authDto.employee.role);
      return true;
    } catch (ex) {
      return false;
    }
  }
}
