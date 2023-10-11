import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      this.onPressed,
      required this.textColor});

  final String title;
  final Color textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Enabled',
  type: CustomButton,
)
Widget enabledButton(BuildContext context) {
  return Scaffold(
    body: Center(
      child: CustomButton(
        title: context.knobs.string(label: 'Title', initialValue: 'Click Me'),
        textColor: Colors.white,
        onPressed: () {},
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: CustomButton,
)
Widget disabledButton(BuildContext context) {
  return Center(
    child: CustomButton(
      title: 'Disabled',
      onPressed: () {},
      textColor: Colors.grey,
    ),
  );
}
