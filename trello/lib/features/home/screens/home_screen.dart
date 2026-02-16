import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.pushNamed(context, "/signUp");
          },
          child: Text(
            'Home Screen',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
