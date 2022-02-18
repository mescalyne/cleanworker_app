import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:untitled/core/data/network/client.dart';
import 'package:untitled/core/data/network/models/auth.dart';
import 'package:untitled/core/data/network/network_url.dart';

abstract class AuthService {
  Future<AuthNetworkDto?> phoneAuth(String telephone, String code);
}

@Injectable(as: AuthService)
class AuthServiceImpl implements AuthService {
  final VTServiceApi _api;

  AuthServiceImpl(this._api);

  @override
  Future<AuthNetworkDto?> phoneAuth(String telephone, String code) async {
    final result = await _api.postRequest(
        VTServiceUrl.AuthUrl,
        jsonEncode({
          "username": telephone,
          "password": code,
          "client_id": "3",
          "client_secret": "7qIoUAi0iDTJWJZpStXGgRieOpeSoo7b5mFQ6oYj",
          "grant_type": "password",
          "scope": "*"
        }),
        {
          'Content-Type': 'application/json',
        });
        print('${result.body}');
    return AuthNetworkDto.fromMap(jsonDecode(result.body));
  }
}
