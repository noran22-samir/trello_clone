import 'package:flutter/material.dart';
import 'package:trello/features/home/screens/home_screen.dart';
import 'package:trello/features/login/screen/login_screen.dart';
import 'package:trello/features/splash/screen/splash_screen.dart';
import '../features/signUp/screen/sign_up_screen.dart';
import '../features/workspace/screens/workspaceUi.dart';
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
        '/home': (context) => HomeScreen(),
        '/signUp': (context) => SignUpScreen(),
        '/login': (context) => LoginScreen(),
        '/workspace': (context) => WorkspaceScreen(),

      },
    );
  }
}
