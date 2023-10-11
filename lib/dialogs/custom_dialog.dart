import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetBook;

class CustomContainer extends StatefulWidget {
  final double? width;
  final double? height;
  const CustomContainer({super.key, this.width, this.height});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 50,
      height: widget.height ?? 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.purpleAccent,
      ),
    );
  }
}

@widgetBook.UseCase(name: 'Contaienr1', type: CustomContainer)
Widget CustomContainerTetst(BuildContext context) {
  return const Scaffold(
    body: CustomContainer(),
  );
}
