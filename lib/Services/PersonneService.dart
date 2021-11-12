import "package:jei_assignment1/Models/personne.dart";

class PersonneService {
  static Future<Personne> getPersonneById(String id) async {
    await Future.delayed(Duration(seconds: 2));
    return Personne.fromJson(jsonResponse);
  }

  static dynamic jsonResponse = {
    "name": "VALENTINE GUERIN",
    "phone": "04 70 45 67 89",
    "email": "bonjouresitevraimentsuper.fr",
    "profilDescription":
        "Je suis une specialiste en ressources humaines avec plus de 5 and d'experience dans le recrutement, la mise en oeuvre de programmes, les systemes techniques et l'analytique du personnel.",
    "skills": [
      "Formation et developpement des employes",
      "Meilleures pratique de recrutement",
      "Mécanisme souple applique aux RH",
      "Syestémes informatiques liés aux RH et science des données"
    ],
    "experiences": [
      {
        "title": "Directrice générale des RH",
        "date": "SMARS 2018 A PRESENT",
        "description": [
          "S'assure un excellent niveau de participation du personnel",
          "Offre un accompagnement du personnel",
          "Supervise le systéme d'information des RH",
          "Contribue a la planification organisationelle",
        ],
      },
      {
        "title": "Generaliste en ressources humaines",
        "date": "FEVRIER 2015 - MARS 2018",
        "description": [
          "S'assure un excellent niveau de participation du personnel",
          "Offre un accompagnement du personnel",
          "Supervise le systéme d'information des RH",
          "Contribue a la planification organisationelle",
        ],
      },
      {
        "title": "Generaliste en ressources humaines",
        "date": "FEVRIER 2015 - MARS 2018",
        "description": [
          "S'assure un excellent niveau de participation du personnel",
          "Offre un accompagnement du personnel",
          "Supervise le systéme d'information des RH",
          "Contribue a la planification organisationelle",
        ],
      },
    ]
  };
}
