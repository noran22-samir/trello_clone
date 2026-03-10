import 'package:hive_flutter/hive_flutter.dart';
part 'workspace_model.g.dart';

@HiveType(
  typeId: 0,
) // we need to annotate the class with @HiveType and give it a unique typeId to be able to use it with hive
class WorkspaceModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final int color;
  @HiveField(3)
  int numOfLists;
  @HiveField(4)
  int numOfCards;

  WorkspaceModel({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.numOfLists,
    required this.numOfCards,
  });
}
