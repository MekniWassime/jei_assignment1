import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {Key? key,
      this.contentSeperation: 10,
      required this.title,
      required this.content,
      this.leftPadding: 20,
      this.isNested: false})
      : super(key: key);

  const ProfileItem.nested({
    Key? key,
    required this.title,
    required this.content,
  })  : this.leftPadding = 0,
        this.isNested = true,
        this.contentSeperation = 4,
        super(key: key);

  final bool isNested;
  final double contentSeperation;
  final double leftPadding;
  final String title;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    var titleTheme = Theme.of(context).textTheme.headline4!;
    if (isNested)
      titleTheme =
          titleTheme.apply(color: Theme.of(context).textTheme.bodyText1!.color);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: leftPadding),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title.toUpperCase(), style: titleTheme),
          SizedBox(height: contentSeperation),
          content
        ],
      ),
    );
  }
}
