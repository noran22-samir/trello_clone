class WorkspaceModel {
  final String title;
  final String subtitle;
  final int color;
  int numOfLists;
  int numOfCards;

  WorkspaceModel({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.numOfLists,
    required this.numOfCards,
  });
}
