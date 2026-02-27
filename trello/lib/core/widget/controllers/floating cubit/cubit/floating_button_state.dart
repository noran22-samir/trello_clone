part of 'floating_button_cubit.dart';

sealed class FloatingButtonState {
  final bool isHoverd;
  FloatingButtonState({required this.isHoverd});
}

final class FloatingButtonInit extends FloatingButtonState {
  FloatingButtonInit() : super(isHoverd: false);
}

final class FloatingButtonUpdate extends FloatingButtonState {
  FloatingButtonUpdate({required super.isHoverd});
}
