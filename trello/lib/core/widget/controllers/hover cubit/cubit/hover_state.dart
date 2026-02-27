part of 'hover_cubit.dart';

sealed class HoverState {
  final bool isHoverd;
  HoverState({required this.isHoverd});
}

final class HoverInit extends HoverState {
  HoverInit() : super(isHoverd: false);
}

final class HoverUpdate extends HoverState {
  HoverUpdate({required super.isHoverd});
}
