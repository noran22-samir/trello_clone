import 'package:flutter/material.dart';
import 'package:trello/features/home/screens/home_screen.dart';
import 'package:trello/features/login/screen/login_screen.dart';
import '../features/signUp/screen/sign_up_screen.dart';
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
        '/': (context) => HomeScreen(),
        '/signUp': (context) => SignUpScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
