import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class ShowCaseBuilderWidget extends StatelessWidget {
  const ShowCaseBuilderWidget(
      {super.key, required this.content, this.callback});
  final Function? callback;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      onFinish: () {
        if (callback != null) {
          callback!();
        }
      },
      builder: Builder(
        builder: (BuildContext context) {
          return content;
        },
      ),
    );
  }
}
