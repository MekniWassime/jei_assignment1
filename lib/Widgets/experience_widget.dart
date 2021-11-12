import 'package:flutter/material.dart';
import 'package:jei_assignment1/Models/experience.dart';
import 'package:jei_assignment1/Widgets/profile_item.dart';
import 'package:jei_assignment1/Widgets/string_unorderd_list.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({Key? key, required this.experience})
      : super(key: key);
  final Experience experience;
  @override
  Widget build(BuildContext context) {
    return ProfileItem.nested(
      title: experience.title,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(experience.date, style: Theme.of(context).textTheme.headline6),
          StringUnorderedList(list: experience.description),
        ],
      ),
    );
  }
}
