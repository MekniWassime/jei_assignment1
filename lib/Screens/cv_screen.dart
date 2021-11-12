import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jei_assignment1/Models/experience.dart';
import 'package:jei_assignment1/Models/personne.dart';
import 'package:jei_assignment1/Services/PersonneService.dart';
import 'package:jei_assignment1/Widgets/experience_widget.dart';
import 'package:jei_assignment1/Widgets/loading_stream_builder.dart';
import 'package:jei_assignment1/Widgets/my_list_view.dart';
import 'package:jei_assignment1/Widgets/profile_header.dart';
import 'package:jei_assignment1/Widgets/profile_item.dart';
import 'package:jei_assignment1/Widgets/string_unorderd_list.dart';
import 'package:jei_assignment1/Widgets/unordered_list_item.dart';

class CVScreen extends StatefulWidget {
  const CVScreen({Key? key}) : super(key: key);

  @override
  _CVScreenState createState() => _CVScreenState();
}

class _CVScreenState extends State<CVScreen> {
  var _streamController = StreamController<Personne>();

  Future<void> fetchPersonne() async {
    Personne personne = await PersonneService.getPersonneById("id");
    _streamController.add(personne);
  }

  @override
  void initState() {
    fetchPersonne();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: LoadingStreamBuilder<Personne>(
            streamController: _streamController,
            hasDataBuilder: (data) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProfileHeader(
                    name: data.name,
                    phone: data.phone,
                    email: data.email,
                  ),
                  ProfileItem(
                    title: "profile",
                    content: Text(data.profilDescription),
                  ),
                  ProfileItem(
                    title: "competances principales",
                    content: StringUnorderedList(
                      list: data.skills,
                    ),
                  ),
                  SizedBox(height: 20),
                  ProfileItem(
                    title: "experiences professionnelle",
                    content: MyListView<Experience>(
                      itemBuilder: (context, element, index) =>
                          ExperienceWidget(experience: element),
                      items: data.experiences,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }
}
