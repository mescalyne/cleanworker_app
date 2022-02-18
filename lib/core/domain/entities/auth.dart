class AuthDto {
  final String tokenType;
  final int expiresIn;
  final String accessToken;
  final String refreshToken;
  final bool isOpenedShift;
  final EmployeeDto employee;

  AuthDto({
    required this.tokenType,
    required this.accessToken,
    required this.expiresIn,
    required this.refreshToken,
    required this.isOpenedShift,
    required this.employee,
  });

  @override
  String toString() {
    return '"AuthDto: ${employee.role} $tokenType, $accessToken, $expiresIn, $refreshToken "';
  }

  bool isCleaner() {
    return employee.role == 'cleaner';
  }
}

class EmployeeDto {
  final String? name;
  final String? phone;
  final String? email;
  final String? role;

  EmployeeDto({
    required this.name,
    required this.phone,
    required this.email,
    required this.role,
  });
}
