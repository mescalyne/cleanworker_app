
import 'package:injectable/injectable.dart';
import 'package:untitled/core/data/repository/auth.dart';
import 'package:untitled/core/domain/entities/auth.dart';
import 'package:untitled/utils/result.dart';

abstract class AuthUseCase {
  Future<Result<AuthDto>> call(String telephone, String code);
}

@Injectable(as: AuthUseCase)
class AuthUseCaseImpl implements AuthUseCase {
  final AuthRepository _repository;

  AuthUseCaseImpl(this._repository);

  Future<Result<AuthDto>> call(String telephone, String code) => _repository.phoneAuth(telephone,code);
}
