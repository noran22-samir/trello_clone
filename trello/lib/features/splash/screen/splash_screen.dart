import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 340,),
            FadeTransition(
              opacity: _fadeAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Image.asset('assets/images/logo.png', width: 140),
              ),
            ),

            const SizedBox(height: 30),

            FadeTransition(
              opacity: _fadeAnimation,
              child: Text(
                'Plan, track, and get things done!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            SizedBox(height: 270,),
            Positioned(
              bottom: 24,
              left: 0,
              right: 0,
              child: Text(
                '© 2026 Trello Clone',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                  letterSpacing: 0.8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
