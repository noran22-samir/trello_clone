part of 'bottom_bar_cubit.dart';

sealed class BottomBarState {
  int selectedIcon;
  BottomBarState({required this.selectedIcon});
}

final class BottomBarInit extends BottomBarState {
  BottomBarInit() : super(selectedIcon: 0);
}

final class BottomBarUpdate extends BottomBarState {
  BottomBarUpdate({required super.selectedIcon});
}
