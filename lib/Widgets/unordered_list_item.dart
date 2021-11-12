import 'package:flutter/material.dart';

class UnorderedListItem extends StatelessWidget {
  const UnorderedListItem({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Bullet(),
          Expanded(
            child: Text(
              text,
            ),
          ),
        ],
      ),
    );
  }
}

class Bullet extends StatelessWidget {
  const Bullet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 4),
      decoration: BoxDecoration(
          color: Theme.of(context).textTheme.bodyText2!.color,
          shape: BoxShape.circle),
      height: 10,
      width: 10,
    );
  }
}
