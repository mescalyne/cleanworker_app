
class AuthNetworkDto {
  final String tokenType;
  final int expiresIn;
  final String accessToken;
  final String refreshToken;
    final bool isOpenedShift;

  final EmployeeNetworkDto user;

  AuthNetworkDto(
      {required this.tokenType,
      required this.expiresIn,
      required this.accessToken,
      required this.refreshToken,
      required this.isOpenedShift,
      required this.user});

  factory AuthNetworkDto.fromMap(Map<String, dynamic> data) => AuthNetworkDto(
        tokenType: data['token_type'],
        expiresIn: data['expires_in'],
        accessToken: data['access_token'],
        refreshToken: data['refresh_token'],
        isOpenedShift: data['shift']['is_opened'],
        user: EmployeeNetworkDto.fromMap(data['user']['data']),
      );

  @override
  String toString() {
    return '"AuthorNetworkDto: ${user.role}, $tokenType $accessToken"';
  }
}

class EmployeeNetworkDto {
  final String? name;
  final String? phone;
  final String? email;
  final String? role;

  EmployeeNetworkDto({
    required this.name,
    required this.phone,
    required this.email,
    required this.role,
  });

  factory EmployeeNetworkDto.fromMap(Map<String, dynamic> data) =>
      EmployeeNetworkDto(
        name: data['name'],
        email: data['email'],
        phone: data['phone'],
        role: data['role'],
      );
}
