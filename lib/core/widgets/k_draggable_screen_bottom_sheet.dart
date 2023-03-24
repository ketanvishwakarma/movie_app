import 'package:flutter/material.dart';

Future<void> kDraggableScreenBottomSheet({
  required BuildContext context,
  required Widget child,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    barrierColor: Theme.of(context).colorScheme.background.withOpacity(0.9),
    shape: Border.all(
      style: BorderStyle.none,
    ),
    builder: (BuildContext context) {
      return child;
    },
  );
}
