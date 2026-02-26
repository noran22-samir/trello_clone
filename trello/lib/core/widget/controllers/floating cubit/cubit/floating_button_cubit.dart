import 'package:bloc/bloc.dart';

part 'floating_button_state.dart';

class FloatingButtonCubit extends Cubit<FloatingButtonState> {
  FloatingButtonCubit() : super(FloatingButtonInitial());
}
