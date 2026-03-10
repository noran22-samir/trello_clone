part of 'checkbox_cubit.dart';

sealed class CheckboxState {
  final bool box1;
  final bool box2;
  final bool box3;

  CheckboxState({required this.box1, required this.box2, required this.box3});
}

final class CheckboxInit extends CheckboxState {
  CheckboxInit() : super(box1: false, box2: false, box3: false);
}

final class CheckboxUpdate extends CheckboxState {
  CheckboxUpdate({
    required super.box1,
    required super.box2,
    required super.box3,
  });
}
