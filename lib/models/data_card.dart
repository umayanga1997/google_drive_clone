class DataCard {
  final String type;
  final String name;
  final String thumbImage;
  final String file;

  DataCard(
      {required this.type,
      required this.file,
      required this.name,
      required this.thumbImage});

  Map<dynamic, String> toJson() =>
      {'type': type, 'name': name, 'thumbImage': thumbImage, 'file': file};
}
