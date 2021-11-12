import 'package:flutter/material.dart';
import 'package:jei_assignment1/Widgets/my_list_view.dart';
import 'package:jei_assignment1/Widgets/unordered_list_item.dart';

class StringUnorderedList extends StatelessWidget {
  const StringUnorderedList({Key? key, required this.list}) : super(key: key);
  final List<String> list;
  @override
  Widget build(BuildContext context) {
    return MyListView<String>(
      items: list,
      itemBuilder: (context, element, index) =>
          UnorderedListItem(text: element),
    );
  }
}
