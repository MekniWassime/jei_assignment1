import 'package:flutter/material.dart';

class MyListView<T> extends StatelessWidget {
  const MyListView({Key? key, required this.itemBuilder, required this.items})
      : super(key: key);
  final Widget Function(BuildContext context, T element, int index) itemBuilder;
  final List<T> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) =>
          itemBuilder(context, items[index], index),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
