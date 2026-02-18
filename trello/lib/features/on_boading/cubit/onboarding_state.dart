abstract class OnboardingState {}

class OnboardingInitial extends OnboardingState {
  final int currentPage;

  OnboardingInitial({this.currentPage = 0});
}

