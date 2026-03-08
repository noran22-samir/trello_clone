import 'package:hive_flutter/hive_flutter.dart';
part 'card_model.g.dart';

@HiveType(typeId: 1)
class CardModel extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String date;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final int color;

  CardModel({
    required this.title,
    required this.date,
    required this.description,
    required this.color,
  });
}
