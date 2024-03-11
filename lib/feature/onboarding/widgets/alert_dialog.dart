import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:flutter/material.dart';

Future<String?> globalAlertDialog({
  BuildContext? context,
  String? alertTitle,
  String? alertBody,
  double? horizontalPadding,
  double? inputWidgetHorizontalPadding,
  double? inputWidgetVerticalPadding,
  Widget? firstWidget,
  Widget? secondWidget,
  Widget? thirdWidget,
  Widget? inputWidget,
  bool? dismissible,
  String? icon,
  TextStyle? titleStyle,
 required VoidCallback onBackButtonDismiss,
  Key? key,
}) {
  return showDialog<String>(
      barrierColor: Colors.black87,
      context: context!,
      useSafeArea: false,
      barrierDismissible: dismissible ?? true,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async {
            if (dismissible == false) {

              onBackButtonDismiss();
            }
            return true;
          },
          child: AlertDialog(backgroundColor: context.theme.colorScheme.background,
            title: alertTitle != null
                ? Text(alertTitle, style: context.theme.textTheme.titleSmall)
                : null,
            content: alertBody != null ? Text(alertBody) : null,

            actions: <Widget>[
              Center(child: inputWidget ?? Container()),

            ],
          ),
        );
      });
}
