import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:trello/core/widget/controllers/bottomBar%20cubit/cubit/bottom_bar_cubit.dart';
import 'package:trello/core/widget/controllers/hover%20cubit/cubit/hover_cubit.dart';
import 'package:trello/core/widget/controllers/obsecure%20cubit/cubit/obsecure_cubit.dart';
import 'package:trello/services/auth_service.dart';
import './data/hive_data_store.dart';
import '../models/task.dart';
import './views/tasks/task_view.dart';

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
import './core//widget//base_widget.dart';

void debugPrintAllUsers() {
  final users = Hive.box('users');
  print("--- Registered Users ---");
  for (var key in users.keys) {
    print("Email: $key | Hashed Pass: ${users.get(key)}");
  }
  print("------------------------");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  // فتح كل الـ boxes المطلوبة
  await Hive.openBox('users');
  await Hive.openBox('settings');
  await Hive.openBox<Task>('tasksBox'); // <-- لازم await هنا

  print("Hive boxes opened successfully");
  debugPrintAllUsers();

  // مسح مهام اليوم السابق
  final tasksBox = Hive.box<Task>('tasksBox');
  tasksBox.values.forEach((task) {
    if (task.createdAtTime.day != DateTime.now().day) {
      task.delete();
    }
  });

  final authService = AuthService();
  bool isLoggedIn = authService.checkLogin();

  runApp(BaseWidget(child: TrelloApp(isLoggedIn: isLoggedIn)));
}

class TrelloApp extends StatelessWidget {
  final bool isLoggedIn;
  const TrelloApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SplashCubit>(create: (_) => SplashCubit()..startSplash()),

        BlocProvider<BottomBarCubit>(create: (_) => BottomBarCubit()),

        BlocProvider<HoverCubit>(create: (_) => HoverCubit()),

        BlocProvider<ObsecureCubit>(create: (_) => ObsecureCubit()),
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
        theme: ThemeData(
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              color: Colors.black,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
            titleMedium: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            displayMedium: TextStyle(color: Colors.white, fontSize: 21),
            displaySmall: TextStyle(
              color: Color.fromARGB(255, 234, 234, 234),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            headlineMedium: TextStyle(color: Colors.grey, fontSize: 17),
            headlineSmall: TextStyle(color: Colors.grey, fontSize: 16),
            titleSmall: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            titleLarge: TextStyle(
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
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
