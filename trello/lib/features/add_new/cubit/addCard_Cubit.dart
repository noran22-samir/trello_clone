import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../models/card_model.dart';

part 'addCard_state.dart';

class AddCardCubit extends Cubit<AddCardState> {
  AddCardCubit() : super(AddCardInitial());

  addCard(CardModel card) async {
    emit((AddCardLoading()));
    try{
      var cardsBox = Hive.box<CardModel>('cardsBox');
      await cardsBox.add(card);
      emit(AddCardSuccess());
    } catch (error){
      emit(AddCardFailure(error.toString()));
    }
  }
}
