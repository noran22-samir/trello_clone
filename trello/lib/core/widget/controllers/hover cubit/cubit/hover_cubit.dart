import 'package:bloc/bloc.dart';

part 'hover_state.dart';

class HoverCubit extends Cubit<HoverState> {
  HoverCubit() : super(HoverInit());

  void floatingHoverChanged(bool Hovered) {
    emit(HoverUpdate(
      signHoverd: state.signHoverd, 
      loginHoverd: state.loginHoverd,
      isHoverd: Hovered
    ));
  }

  void onSignHoverChanged(bool Hovered) {
    emit(HoverUpdate(
      signHoverd: Hovered, 
      loginHoverd: state.loginHoverd,
      isHoverd: state.isHoverd
    ));
  }

  void onLoginHoverChanged(bool Hovered) {
    emit(HoverUpdate(
      signHoverd: state.signHoverd,
      loginHoverd: Hovered,
      isHoverd: state.isHoverd
    ));
  }
}
