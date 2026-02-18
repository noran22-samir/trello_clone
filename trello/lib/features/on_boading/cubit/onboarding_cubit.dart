import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  void changePage(int index) {
    emit(OnboardingInitial(currentPage: index));
  }

  void nextPage(int currentPage) {
    emit(OnboardingInitial(currentPage: currentPage + 1));
  }
}
