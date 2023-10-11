import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_book_test/state/button_provider.dart';

class CustomButton extends ConsumerWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onPressed,
    required this.textColor,
  });

  final String title;
  final Color textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(buttonProvider);
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            ref.read(buttonProvider.notifier).update((state) => state + 1);
          },
          child: Text(
            title,
            style: TextStyle(color: textColor),
          ),
        ),
        Text('$state'),
      ],
    );
  }
}
