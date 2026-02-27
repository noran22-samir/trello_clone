import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:trello/core/widget/controllers/bottomBar%20cubit/cubit/bottom_bar_cubit.dart';
import 'package:trello/core/widget/controllers/floating%20cubit/cubit/floating_button_cubit.dart';
import 'package:trello/services/auth_service.dart';

// Splash
import 'features/splash/screen/splash_screen.dart';
import 'features/splash/cubit/splash_cubit.dart';

// Onboarding
import 'features/on_boading/screens/onBoarding.dart';

// Auth
import 'features/login/screen/login_screen.dart';
import 'features/signUp/screen/sign_up_screen.dart';

// Home & related screens
import 'features/home/screens/home_screen.dart';
import 'features/home/screens/fav_screen.dart';
import 'features/home/screens/recent_screen.dart';
import 'features/home/screens/personal_screen.dart';

// Settings
import 'features/settings/screens/settings_screen.dart';

// Workspace
import 'features/workspace/screens/workspaceUi.dart';

// Cards
import 'features/cards/screens/cardsUi.dart';

// Add Board
import 'features/add_new/screens/addBoard.dart';

// Add card
import 'features/add_new/screens/addCard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  try {
    await Hive.openBox('users');
    await Hive.openBox('settings');
    print("Hive boxes opened successfully");
  } catch (e) {
    print("Error opening Hive boxes: $e");
  }

  final authService = AuthService();
  bool isLoggedIn = authService.checkLogin();

  runApp(TrelloApp(isLoggedIn: isLoggedIn));
}

class TrelloApp extends StatelessWidget {
  final bool isLoggedIn;
  const TrelloApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SplashCubit>(
          create: (_) => SplashCubit()..startSplash(),
        ),

        BlocProvider<FloatingButtonCubit>(
          create: (_) => FloatingButtonCubit(),
        ),

        BlocProvider<BottomBarCubit>(
          create: (_) => BottomBarCubit(),
        ),
        /*
        ================== TEAM NOTE ==================

        When you finish a Cubit for any Feature:
        1️⃣ Add its BlocProvider here
        2️⃣ Add the corresponding Screen Route below

        ❗ Do NOT create BlocProviders inside Screens
        ❗ All Cubits should be global from here

        ===============================================
        */
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/on_boarding': (context) => const OnboardingScreen(),

          // Auth
          '/signUp': (context) => const SignUpScreen(),
          '/login': (context) => const LoginScreen(),

          // Home
          '/home': (context) => const HomeScreen(),
          '/settings': (context) => const SettingsScreen(),
          '/favScreen': (context) => const FavScreen(),
          '/recentScreen': (context) => const RecentScreen(),
          '/personalScreen': (context) => const PersonalScreen(),

          // Workspace
          '/workspaceScreen': (context) => const WorkspaceScreen(),

          // Cards
          '/cardsScreen': (context) => const CardsScreen(),

          // Add Board
          '/addBoard': (context) => const AddBoardScreen(),
          // Add card
          '/addCard': (context) => const AddCardScreen(),
        },
      ),
    );
  }
}