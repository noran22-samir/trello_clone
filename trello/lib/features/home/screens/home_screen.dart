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
      appBar: AppBar(
        leadingWidth: 35,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(3, 5, 0, 5),
          child: Row(
            children: [
              Image.asset("assets/images/logo_icon.png", width: 35, height: 35),
              SizedBox(width: 5),
              const Text(
                "Trello",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
