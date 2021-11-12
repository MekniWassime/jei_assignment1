import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jei_assignment1/Widgets/spinner_widget.dart';

class LoadingStreamBuilder<T> extends StatelessWidget {
  const LoadingStreamBuilder(
      {Key? key, required this.streamController, required this.hasDataBuilder})
      : super(key: key);
  final StreamController<T> streamController;
  final Widget Function(T data) hasDataBuilder;
  //TODO error builder

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
      stream: streamController.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data != null)
          return hasDataBuilder(snapshot.data!);
        else
          return SpinnerWidget();
      },
    );
  }
}
