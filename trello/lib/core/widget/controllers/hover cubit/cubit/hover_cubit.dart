import 'package:bloc/bloc.dart';

part 'hover_state.dart';

class HoverCubit extends Cubit<HoverState> {
  HoverCubit() : super(HoverInit());

  void onEnter() {
    emit(HoverUpdate(isHoverd: true));
  }

  void onExit() {
    emit(HoverUpdate(isHoverd: false));
  }
}
