import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trello/features/signUp/screen/sign_up_screen.dart';

import '../../../core/utils/app_colors.dart';
import '../cubit/onboarding_cubit.dart';
import '../cubit/onboarding_state.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: const _OnboardingView(),
    );
  }
}

class _OnboardingView extends StatefulWidget {
  const _OnboardingView();

  @override
  State<_OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<_OnboardingView> {
  final PageController _pageController = PageController();

  final List<Map<String, String>> onboardingData = [
    {
      "title": "Capture to-dos instantly",
      "description":
          "Add tasks with widgets or snap a photo .",
      "image": "assets/images/onBoard1.png",
    },
    {
      "title": "Organize with ease",
      "description":
          "Drag cards to reorder or move them to a board.",
      "image": "assets/images/onBoard2.png",
    },
    {
      "title": "Celebrate progress",
      "description":
          "Drag to prganize cards between lists or move them to a new board.",
      "image": "assets/images/onBoard3.png",
    },
    {
      "title": "Your boards go where you go",
      "description":
          "Access your board anywhere - desktop or mobile.",
      "image": "assets/images/onBoard4.png",
    },
  ];

  void _goToSignUp(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const SignUpScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (context, state) {
                  final currentPage =
                      (state as OnboardingInitial).currentPage;

                  return PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      context
                          .read<OnboardingCubit>()
                          .changePage(index);
                    },
                    itemCount: onboardingData.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 40,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 300,
                              child: Image.asset(
                                onboardingData[index]["image"]!,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(height: 30),
                            Text(
                              onboardingData[index]["title"]!,
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blueDark_searchButton,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              onboardingData[index]["description"]!,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 142, 185, 249),
                                height: 1.4,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                final currentPage =
                    (state as OnboardingInitial).currentPage;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardingData.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 10,
                      width: currentPage == index ? 22 : 10,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: currentPage == index
                            ? AppColors.blueDark_searchButton
                            : AppColors.skyBlue_card,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (context, state) {
                  final currentPage =
                      (state as OnboardingInitial).currentPage;

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => _goToSignUp(context),
                        child: const Text(
                          "Skip",
                          style: TextStyle(color: Color.fromARGB(255, 113, 113, 113)),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (currentPage ==
                              onboardingData.length - 1) {
                            _goToSignUp(context);
                          } else {
                            _pageController.nextPage(
                              duration:
                                  const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                            context
                                .read<OnboardingCubit>()
                                .nextPage(currentPage);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:AppColors.blueDark_searchButton,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 26,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          currentPage ==
                                  onboardingData.length - 1
                              ? "Get Started"
                              : "Next",
                          style:
                              const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
