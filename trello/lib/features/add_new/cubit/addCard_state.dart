part of 'addCard_cubit.dart';

sealed class AddCardState {}

class AddCardInitial extends AddCardState {}

class AddCardLoading extends AddCardState {}

class AddCardSuccess extends AddCardState {}

class AddCardFailure extends AddCardState {
  final String error;
  AddCardFailure(this.error);
}
