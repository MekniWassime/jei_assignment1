class Experience {
  String title;
  String date;
  List<String> description;

  Experience({
    required this.title,
    required this.date,
    required this.description,
  });

  factory Experience.fromJson(json) {
    return Experience(
      title: json['title'],
      date: json['date'],
      description: json['description'],
    );
  }
}
