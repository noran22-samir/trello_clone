part of 'hover_cubit.dart';

sealed class HoverState {
  final bool signHoverd;
  final bool loginHoverd;
  final bool isHoverd;
  HoverState({required this.signHoverd, required this.loginHoverd, required this.isHoverd});
}

final class HoverInit extends HoverState {
  HoverInit() : super(signHoverd: false, loginHoverd: false , isHoverd: false);
}

final class HoverUpdate extends HoverState {
  HoverUpdate({required super.signHoverd, required super.loginHoverd, required super.isHoverd});
}
