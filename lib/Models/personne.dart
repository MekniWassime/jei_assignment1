import 'package:jei_assignment1/Models/experience.dart';

class Personne {
  String name;
  String phone;
  String email;
  String profilDescription;
  List<String> skills;
  List<Experience> experiences;

  Personne({
    required this.name,
    required this.phone,
    required this.email,
    required this.profilDescription,
    required this.skills,
    required this.experiences,
  });

  factory Personne.fromJson(json) {
    var experiences = (json['experiences'] as List)
        .map((jsonExperience) => Experience.fromJson(jsonExperience))
        .toList();
    return Personne(
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      profilDescription: json['profilDescription'],
      skills: json['skills'],
      experiences: experiences,
    );
  }
}
