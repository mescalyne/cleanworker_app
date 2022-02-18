import 'package:untitled/core/domain/entities/auth.dart';
import 'package:untitled/core/presentation/entities/enums.dart';

class FirstState {
  AuthDto? authDto;
  ScreenStatus screenStatus;
  FirstScreenStatus currentScreen;

  FirstState({
    this.authDto,
    this.screenStatus = ScreenStatus.view,
    this.currentScreen = FirstScreenStatus.background,
  });

  FirstState copyWith({
    AuthDto? authDto,
    ScreenStatus? currentStatus,
    FirstScreenStatus? currentScreen,
  }) =>
      FirstState(
        authDto: authDto ?? this.authDto,
        screenStatus: currentStatus ?? this.screenStatus,
        currentScreen: currentScreen ?? this.currentScreen,
      );
}

enum FirstScreenStatus {
  background,
  geolocation,
  login,
}
