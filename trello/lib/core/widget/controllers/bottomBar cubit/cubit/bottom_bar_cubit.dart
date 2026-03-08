import 'package:bloc/bloc.dart';

part 'bottom_bar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarInit());

  void changePage(int index) {
    emit(BottomBarUpdate(selectedIcon: index));
  }
}
