import 'package:untitled/core/data/network/models/auth.dart';
import 'package:untitled/core/domain/entities/auth.dart';

extension AuthAdapter on AuthNetworkDto {
  AuthDto get toDomain {
    return AuthDto(
      accessToken: accessToken,
      tokenType: tokenType,
      expiresIn: expiresIn,
      refreshToken: refreshToken,
      employee: user.toDomain,
      isOpenedShift: isOpenedShift,
    );
  }
}

extension EmployeeAdapter on EmployeeNetworkDto {
  EmployeeDto get toDomain {
    return EmployeeDto(
      email: email,
      name: name,
      phone: phone,
      role: role,
    );
  }
}
