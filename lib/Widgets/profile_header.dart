import 'package:flutter/material.dart';
import 'package:jei_assignment1/Widgets/profile_photo.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
    required this.name,
    required this.phone,
    required this.email,
  }) : super(key: key);
  final String name;
  final String phone;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(phone),
              Text(email),
            ],
          ),
        ),
        ProfilePhoto()
      ],
    );
  }
}
