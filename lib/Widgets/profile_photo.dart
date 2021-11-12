import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return CircleAvatar(
      backgroundImage: AssetImage("Assets/Screenshot 2021-11-12 014757.png"),
      radius: screenSize.width * 0.15,
    );
  }
}
