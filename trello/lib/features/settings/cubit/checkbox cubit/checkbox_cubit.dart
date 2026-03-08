import 'package:bloc/bloc.dart';

part 'checkbox_state.dart';

class CheckboxCubit extends Cubit<CheckboxState> {
  CheckboxCubit() : super(CheckboxInit());

  void box1() {
    emit(
      CheckboxUpdate(
        box1: !state.box1,
        box2: state.box2,
        box3: state.box3,
      ),
    );
  }

  void box2() {
    emit(
      CheckboxUpdate(
        box1: state.box1,
        box2: !state.box2,
        box3: state.box3,
      ),
    );
  }

  void box3() {
    emit(
      CheckboxUpdate(
        box1: state.box1,
        box2: state.box2,
        box3: !state.box3,
      ),
    );
  }
}
