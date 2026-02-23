import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trello/services/auth_service.dart';
import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void startSplash() async {
    try{
      await Future.delayed(const Duration(seconds: 3));
    
    final authService = AuthService();
    bool isLoggedIn = authService.checkLogin();
    if (isLoggedIn) {
      emit(NavigateToHome());
    } else {
      emit(NavigateToOnboarding());
    }
    }
    catch(e){
      print("Error in SplashCubit: $e");
    }
  }
}
