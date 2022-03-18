class ListItem {
  int id;
  String headerName;
  String description;
  bool isExpanded;

  ListItem({
    required this.id,
    required this.headerName,
    required this.description,
    this.isExpanded = false,
  });
}