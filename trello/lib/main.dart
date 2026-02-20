import 'package:flutter/material.dart';
import 'package:trello/features/home/screens/home_screen.dart';
import 'package:trello/features/login/screen/login_screen.dart';
import 'package:trello/features/settings/screens/settings_screen.dart';
import 'package:trello/features/splash/screen/splash_screen.dart';
import '../features/signUp/screen/sign_up_screen.dart';
import 'package:trello/features/on_boading/screens/onBoarding.dart';

void main() {
  runApp(TrelloApp());
}

class TrelloApp extends StatelessWidget {
  const TrelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),

        '/on_boarding': (context) => OnboardingScreen(),

        '/signUp': (context) => SignUpScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
